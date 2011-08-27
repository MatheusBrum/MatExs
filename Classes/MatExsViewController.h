//
//  MatExsViewController.h
//  MatExs
//
//  Created by Matheus Brum on 17/10/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MatExsViewController : UIViewController {
	IBOutlet UILabel *labelPergunta;
	IBOutlet UILabel *labelResposta;
	IBOutlet UILabel *campoResposta;
	IBOutlet UIButton *botaoResposta;
	IBOutlet UISlider *slider;
	IBOutlet UILabel *labelSlider;
	IBOutlet UISwitch *sNegativo;
	IBOutlet UISwitch *sMultiplicacao;
	int numeroAtual;
	NSInteger p;
	NSInteger a;
	NSInteger b;
	NSInteger resultado;
	NSInteger valorSlider;
}
@property (nonatomic,retain) UILabel *labelPergunta;
@property (nonatomic,retain) UILabel *labelResposta;
@property (nonatomic,retain)  UILabel *campoResposta;
@property (nonatomic,retain) UISlider *slider;
@property (nonatomic,retain)  UILabel *labelSlider;
@property (nonatomic,retain)UISwitch *sNegativo;
@property (nonatomic,retain)UISwitch *sMultiplicacao;
- (IBAction)botaoDigito:(id)sender;
-(IBAction)botaoBack;
-(IBAction)botaoApagar;
-(IBAction)botaoVerResposta;
-(IBAction)novaPergunta;
-(void)perguntar;
-(void)sortearNumeros;
-(void)sortearOperacao;
-(IBAction)verificar;
-(IBAction)botaoMenos;
-(IBAction)sliderControle:(id)sender;

@end

