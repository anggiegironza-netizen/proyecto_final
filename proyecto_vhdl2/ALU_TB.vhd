library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU_TB is
-- El testbench no tiene puertos
end entity ALU_TB;

architecture behavioral of ALU_TB is

    -- =========================================
    -- Declaracion del componente a probar
    -- =========================================
    component ALU
        port (
            A       : in  std_logic_vector(7 downto 0);
            B       : in  std_logic_vector(7 downto 0);
            ALU_Sel : in  std_logic_vector(2 downto 0);
            Result  : out std_logic_vector(7 downto 0);
            NZVC    : out std_logic_vector(3 downto 0)
        );
    end component;

    -- =========================================
    -- Señales internas (conectan al DUT)
    -- =========================================
    signal A       : std_logic_vector(7 downto 0) := (others => '0');
    signal B       : std_logic_vector(7 downto 0) := (others => '0');
    signal ALU_Sel : std_logic_vector(2 downto 0) := (others => '0');
    signal Result  : std_logic_vector(7 downto 0);
    signal NZVC    : std_logic_vector(3 downto 0);

begin

    -- =========================================
    -- Instancia del DUT (Device Under Test)
    -- =========================================
    DUT : ALU
        port map (
            A       => A,
            B       => B,
            ALU_Sel => ALU_Sel,
            Result  => Result,
            NZVC    => NZVC
        );

    -- =========================================
    -- Proceso de estimulos
    -- =========================================
    STIMULUS : process
    begin

        -- ?????????????????????????????????????
        -- PRUEBAS DE SUMA (ALU_Sel = "000")
        -- ?????????????????????????????????????
        ALU_Sel <= "000";

        -- CASO 1: Suma normal positiva
        -- 5 + 3 = 8
        -- Esperado: Result=00001000, NZVC=0000
        A <= x"05";  -- 5
        B <= x"03";  -- 3
        wait for 20 ns;

        -- CASO 2: Resultado cero
        -- 0 + 0 = 0
        -- Esperado: Result=00000000, NZVC=0100 (Z=1)
        A <= x"00";  -- 0
        B <= x"00";  -- 0
        wait for 20 ns;

        -- CASO 3: Flag N activado
        -- 5 + (-10) = -5
        -- Esperado: Result=11111011, NZVC=1000 (N=1)
        A <= x"05";  -- 5
        B <= x"F6";  -- -10 en complemento a 2
        wait for 20 ns;

        -- CASO 4: Flag V activado (overflow con signo)
        -- 127 + 1 = 128 ? desborda rango con signo
        -- Esperado: Result=10000000, NZVC=1010 (N=1, V=1)
        A <= x"7F";  -- 127
        B <= x"01";  -- 1
        wait for 20 ns;

        -- CASO 5: Flag C activado (carry sin signo)
        -- 200 + 200 = 400 ? desborda 8 bits
        -- Esperado: Result=10010000, NZVC=1001 (N=1, C=1)
        A <= x"C8";  -- 200
        B <= x"C8";  -- 200
        wait for 20 ns;

        -- CASO 6: N y Z nunca juntos
        -- 128 + 128 = 256 ? C=1, result=0 ? Z=1
        -- Esperado: Result=00000000, NZVC=0101 (Z=1, C=1)
        A <= x"80";  -- 128
        B <= x"80";  -- 128
        wait for 20 ns;

        -- ?????????????????????????????????????
        -- PRUEBAS DE RESTA (ALU_Sel = "001")
        -- ?????????????????????????????????????
        ALU_Sel <= "001";

        -- CASO 7: Resta normal positiva
        -- 10 - 3 = 7
        -- Esperado: Result=00000111, NZVC=0010 (C=1 sin borrow)
        A <= x"0A";  -- 10
        B <= x"03";  -- 3
        wait for 20 ns;

        -- CASO 8: Resultado cero
        -- 5 - 5 = 0
        -- Esperado: Result=00000000, NZVC=0110 (Z=1, C=1)
        A <= x"05";  -- 5
        B <= x"05";  -- 5
        wait for 20 ns;

        -- CASO 9: Flag N activado (resultado negativo)
        -- 3 - 5 = -2
        -- Esperado: Result=11111110, NZVC=1000 (N=1, C=0 hay borrow)
        A <= x"03";  -- 3
        B <= x"05";  -- 5
        wait for 20 ns;

        -- CASO 10: Flag V activado en resta
        -- -128 - 1 = -129 ? desborda rango con signo
        -- Esperado: Result=01111111, NZVC=0011 (V=1, C=1)
        A <= x"80";  -- -128
        B <= x"01";  -- 1
        wait for 20 ns;

        -- CASO 11: Positivo menos negativo = overflow
        -- 127 - (-1) = 128 ? desborda
        -- Esperado: Result=10000000, NZVC=1010 (N=1, V=1)
        A <= x"7F";  -- 127
        B <= x"FF";  -- -1 en complemento a 2
        wait for 20 ns;

        -- CASO 12: Operacion no definida
        -- ALU_Sel desconocido ? todo en cero
        -- Esperado: Result=00000000, NZVC=0000
        ALU_Sel <= "111";
        A <= x"AA";
        B <= x"BB";
        wait for 20 ns;

        -- Fin de la simulacion
        wait;

    end process STIMULUS;

end architecture behavioral;
