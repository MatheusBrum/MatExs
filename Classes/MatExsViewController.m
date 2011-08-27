//
//  MatExsViewController.m
//  MatExs
//
//  Created by Matheus Brum on 17/10/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "MatExsViewController.h"

@implementation MatExsViewController

@synthesize labelPergunta,labelResposta,campoResposta,slider,labelSlider,sNegativo,sMultiplicacao;

- (void)viewDidLoad {
    [super viewDidLoad];
	valorSlider = 50;
	[self perguntar];
}
-(IBAction)botaoBack {
	[campoResposta resignFirstResponder];
}

-(void)perguntar{
	numeroAtual = 0;
	[botaoResposta setHidden:NO];
	[self sortearOperacao];
	[self sortearNumeros];
	if (p==0) {
		NSLog(@"Perguntando uma adição");
		resultado = a +b;
		labelPergunta.text = [NSString stringWithFormat: @"%i + %i = ?",a,b];
	}
	if (p==1) {
		NSLog(@"Perguntando uma subtração");
		resultado = a - b;
		labelPergunta.text = [NSString stringWithFormat: @"%i - %i = ?",a,b];
	}
	if (p==2) {
		NSLog(@"Perguntando uma multiplicação");
		resultado = a * b;
		labelPergunta.text = [NSString stringWithFormat: @"%i x %i = ?",a,b];
	}
	[botaoResposta setHidden:NO];
}
-(void)sortearNumeros{
	a = arc4random() & valorSlider;
	b = arc4random() & valorSlider;
	if (p == 1) {
		if (sNegativo.on) {
		}else {
			if (b>a) {
				[self sortearNumeros];
			}
		}
	}
		NSLog(@"a=%i b = %i",a,b);
}
-(void)sortearOperacao {
	if (sMultiplicacao.on) {
		p=arc4random() & 2;
	}else {
			p=arc4random() & 1;
	}
	NSLog(@"Sorteando operação p = %i",p);
}
-(IBAction)verificar{
	if (p == 0) {
		resultado = a + b;
		if ([campoResposta.text intValue] == resultado) {
			[labelResposta setText:@"A resposta está correta!"];
		}else {
			[labelResposta setText:@"A resposta está errada, tende denovo"];
		}
	}
	if (p == 1) {
	
		resultado = a - b;
		if ([campoResposta.text intValue] == resultado) {
			[labelResposta setText:@"A resposta está correta!"];
		}else {
			[labelResposta setText:@"A resposta está errada, tende denovo"];
		}
	}
	if (p == 2) {
		
		resultado = a * b;
		if ([campoResposta.text intValue] == resultado) {
			[labelResposta setText:@"A resposta está correta!"];
		}else {
			[labelResposta setText:@"A resposta está errada, tende denovo"];
		}
	}
	campoResposta.text = @"";
	[self perguntar];
}
- (IBAction)botaoDigito:(id)sender {
	numeroAtual = numeroAtual*10 + (float)[sender tag];
	campoResposta.text = [NSString stringWithFormat:@"%d", numeroAtual];
}
-(IBAction)botaoApagar{
	numeroAtual = 0;
	campoResposta.text = @"";
}
-(IBAction)botaoVerResposta {
	NSString *mensagem = [NSString stringWithFormat:@"O resultado é %i",resultado];
	UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Resposta" message:mensagem delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
	[alerta show];
	[alerta release];
}
-(IBAction)botaoMenos{
	numeroAtual = numeroAtual * -1;
	campoResposta.text = [NSString stringWithFormat:@"%d", numeroAtual];
}
-(IBAction)novaPergunta;{
	[self perguntar];
}
-(IBAction)sliderControle:(id)sender {
	
	UISlider *Sslider = (UISlider *)sender;//cria uma classe slider da superclasse UISlider
	int pro = (int)(Sslider.value + 0.5f);// cria a variavel progressAsInt e coloca o valor do slider nela
	NSString *novoTexto = [[NSString alloc] initWithFormat:@"Numero maximo:%d", pro];//cria a classe novo texto e coloca o valor nela
	labelSlider.text = novoTexto;//coloca o valor da variavel novoTexto na label
	[novoTexto release];
	valorSlider = pro;
	
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
