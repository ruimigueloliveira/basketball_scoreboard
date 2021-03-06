library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

-- Com este código pretende-se poder alternar nos 4 displays entre minutos com segundos e segundos com centesimos.

entity CentSwitcher is
	port( UniMin	:	in std_logic_vector(3 downto 0);
		   DezMin	:	in std_logic_vector(3 downto 0);
			sel 		:	out std_logic);

end CentSwitcher;

architecture Behavioral of CentSwitcher is

begin
	process(UniMin, DezMin)
	begin
		if(UniMin="0000" and DezMin="0000") then
			sel <= '1';
		else
			sel <= '0';
		end if;
	end process;
end Behavioral;