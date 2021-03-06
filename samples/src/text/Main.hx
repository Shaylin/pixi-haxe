package text;

import pixi.core.text.DefaultStyle;
import pixi.core.text.Text;
import pixi.core.Application;

class Main extends Application {

	var _label1:Text;
	var _label2:Text;
	var _label3:Text;

	public function new() {
		super({backgroundColor: 0xFFFFFF});
		_init();
	}

	function _init() {
		super.start();

		var style1:DefaultStyle = {};
		style1.fill = 0xF78181;
		style1.fontSize = 18;
		style1.fontFamily = "Courier";
		_label1 = new Text("TEXT 1", style1);
		_label1.position.set(0, 0);
		stage.addChild(_label1);

		var style2 = {
			fontSize:52
		};
		_label2 = new Text("TEXT 2");
		_label2.style.fill ="#99ff33";
		_label2.position.set(0, 80);
		stage.addChild(_label2);

		var style3 = {
			fontSize:"52px"
		};
		_label3 = new Text("TEXT 3");
		_label3.style = style3;
		_label3.position.set(0, 160);
		stage.addChild(_label3);
	}

	static function main() {
		new Main();
	}
}