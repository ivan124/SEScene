
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class Main : SEScene
{
	SESprite sprite1;
	SESprite sprite2;
	SESprite sprite3;
	SESprite sprite4;
	SESprite text;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_sprite_for_color(Color.instance("red"), get_scene_width(), get_scene_height());

		base.initialize(rsc);
		
		rsc.prepare_image("index","index",get_scene_width()*0.5);
		sprite1 = add_sprite_for_image(SEImage.for_resource("index"));
		sprite1.move(0,0);

		rsc.prepare_image("images","images",get_scene_width()*0.5);
		sprite2 = add_sprite_for_image(SEImage.for_resource("images"));
		sprite2.move(get_scene_width()*0.5,0);

		rsc.prepare_image("berserk","berserk",get_scene_width()*0.5);
		sprite3 = add_sprite_for_image(SEImage.for_resource("berserk"));
		sprite3.move(get_scene_width()*0.5,get_scene_height()*0.5);

		rsc.prepare_image("index4","index",get_scene_width()*0.5);
		sprite4 = add_sprite_for_image(SEImage.for_resource("index4"));
		sprite4.move(0,get_scene_height()*0.5);

		rsc.prepare_font("myfont","arial bold color=white", 40);
		text = add_sprite_for_text("Random Images","myfont");
		text.move(10,0);
	}

	public void on_key_press(String name, String str) {
		base.on_key_press(name, str);
		text.set_text("on_key_press");
	}

	public void on_key_release(String name, String str) {
		base.on_key_release(name, str);
		text.set_text("on_key_release");
	}

    public void on_pointer_press(SEPointerInfo pi) {
        base.on_pointer_press(pi);
        if(pi.is_inside(0,0,get_scene_width()*0.5,0.5*get_scene_height())) {
            text.set_text("Iwa-chan");
            text.move(0.25*get_scene_width()-text.get_width()*0.5 , 0.25*get_scene_height()-text.get_height()*0.5);
            sprite1.set_alpha(0.5);
            sprite2.set_alpha(1);
            sprite3.set_alpha(1);
            sprite4.set_alpha(1);;
         }
            
        else if(pi.is_inside(get_scene_width()*0.5 , 0 , get_scene_width()*0.5 , 0.5*get_scene_height())) {
            text.set_text("Oikawa");
            text.move(0.75*get_scene_width()-text.get_width()*0.5 , 0.25*get_scene_height()-text.get_height()*0.5);
            sprite2.set_alpha(0.5);
            sprite1.set_alpha(1);
            sprite3.set_alpha(1);
            sprite4.set_alpha(1);
            
         }
        else if(pi.is_inside(0,get_scene_height()*0.5,get_scene_width()*0.5,0.5*get_scene_height())) {
            text.set_text("Tobio");
            text.move(0.25*get_scene_width()-text.get_width()*0.5 , 0.75*get_scene_height()-text.get_height()*0.5);
            sprite4.set_alpha(0.5);
            sprite1.set_alpha(1);
            sprite2.set_alpha(1);
            sprite3.set_alpha(1);
        }
        else {
            text.set_text("Hina");
            text.move(0.75*get_scene_width()-text.get_width()*0.5 , 0.75*get_scene_height()-text.get_height()*0.5);
            sprite3.set_alpha(0.5);
            sprite1.set_alpha(1);
            sprite2.set_alpha(1);
            sprite4.set_alpha(1);
        }
                 
            
    }
    

}
