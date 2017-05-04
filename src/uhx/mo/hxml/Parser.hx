package uhx.mo.hxml;

import haxe.io.Eof;
import byte.ByteData;
import uhx.mo.hxml.Lexer;

class Parser {

    public function new() {

    }

    public function toTokens(bytes:ByteData, name:String):Array<Token<HxmlKeywords>> {
		var lexer = new Lexer(bytes, name);
		var tokens = [];
		
		try while ( true ) {
			tokens.push( lexer.token( Lexer.root ) );
		} catch (e:Eof) {
			
		} catch (e:Dynamic) {
			
		}
		
		return tokens;
	}
    
}