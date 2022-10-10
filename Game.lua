
local GameStarted = false;

local PossiblePlays = {
     [1] = "Rock";
     [2] = "Paper";
     [3] = "Scissors";
}

io.write("Please Type 'START' to begin!")

while(true)do
     local Console_Input = io.read("*l")
     if (Console_Input == "START") then
         GameStarted = true
     end
  	 if (GameStarted == true) then
	   io.write( "\n\nRock Paper Scissors Time!" );
	   io.write( "\n1)	Rock" );
	   io.write( "\n2)	Paper" );
           io.write( "\n3)	Scissors\n\n" );

		PaulInput = math.random( 1, 3);
		PlayerInput = io.read( "*n" );

		io.write( "\n\nYou Choose:  ", PossiblePlays[PlayerInput] );
		io.write( "\nPaul Choose:  ", PossiblePlays[PaulInput] );

		if ( PlayerInput == PaulInput ) then

			io.write( "\n\nMATCH Result = DRAW!" );
			GameStarted = false;

		elseif ( PlayerInput == 1 and PaulInput == 2 ) or ( PlayerInput == 2 and PaulInput == 3 ) or    ( PlayerInput == 3 and PaulInput == 1 )
                then

			io.write( "\n\nMATCH Result = Paul WINS!" );
			GameStarted = false;

		elseif ( PlayerInput == 2 and PaulInput == 1 ) or ( PlayerInput == 2 and PaulInput == 3 ) or
		( PlayerInput == 1 and PaulInput == 3 )
                then

			io.write( "\n\nMATCH Result = You WIN!" );
			GameStarted = false;

		else

			io.write( "\n\nUnknown" );

		end

	end
end
