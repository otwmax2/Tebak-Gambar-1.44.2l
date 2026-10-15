###### Class j8.i1 (j8.i1)
.class public Lj8/i1;
.super Landroid/app/Dialog;
.source "TwoButtonDialog.java"


# instance fields
.field private o:Lcom/tebakgambar/component/CustomTextView;

.field private p:Lcom/tebakgambar/component/CustomTextView;

.field private q:Lcom/tebakgambar/component/CustomButton;

.field private r:Lcom/tebakgambar/component/CustomButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f1300ec

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-direct {p0}, Lj8/i1;->e()V

    return-void
.end method

.method public static synthetic a(Lj8/i1;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lj8/i1;->f(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lj8/i1;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lj8/i1;->g(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method private e()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0d005e

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f0a02c5

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lj8/i1;->p:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02d7

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lj8/i1;->o:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02a8

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/i1;->q:Lcom/tebakgambar/component/CustomButton;

    const v0, 0x7f0a02a9

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/i1;->r:Lcom/tebakgambar/component/CustomButton;

    return-void
.end method

.method private synthetic f(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x1

    .line 1
    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic g(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x2

    .line 1
    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/i1;
    .registers 4

    .line 1
    iget-object v0, p0, Lj8/i1;->q:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lj8/i1;->q:Lcom/tebakgambar/component/CustomButton;

    new-instance v0, Lj8/g1;

    invoke-direct {v0, p0, p2}, Lj8/g1;-><init>(Lj8/i1;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/i1;
    .registers 4

    .line 1
    iget-object v0, p0, Lj8/i1;->r:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lj8/i1;->r:Lcom/tebakgambar/component/CustomButton;

    new-instance v0, Lj8/h1;

    invoke-direct {v0, p0, p2}, Lj8/h1;-><init>(Lj8/i1;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public h(Ljava/lang/CharSequence;)Lj8/i1;
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/i1;->o:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public i(Ljava/lang/CharSequence;)Lj8/i1;
    .registers 4

    .line 1
    iget-object v0, p0, Lj8/i1;->p:Lcom/tebakgambar/component/CustomTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lj8/i1;->p:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

###### Class j8.g1 (j8.g1)
.class public final synthetic Lj8/g1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/i1;

.field public final synthetic p:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lj8/i1;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/g1;->o:Lj8/i1;

    iput-object p2, p0, Lj8/g1;->p:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lj8/g1;->o:Lj8/i1;

    iget-object v1, p0, Lj8/g1;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, p1}, Lj8/i1;->a(Lj8/i1;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

###### Class j8.h1 (j8.h1)
.class public final synthetic Lj8/h1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/i1;

.field public final synthetic p:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lj8/i1;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/h1;->o:Lj8/i1;

    iput-object p2, p0, Lj8/h1;->p:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lj8/h1;->o:Lj8/i1;

    iget-object v1, p0, Lj8/h1;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, p1}, Lj8/i1;->b(Lj8/i1;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method
