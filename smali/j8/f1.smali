###### Class j8.f1 (j8.f1)
.class public Lj8/f1;
.super Landroid/app/Dialog;
.source "ThreeButtonDialog.java"


# instance fields
.field private o:Lcom/tebakgambar/component/CustomTextView;

.field private p:Lcom/tebakgambar/component/CustomButton;

.field private q:Lcom/tebakgambar/component/CustomButton;

.field private r:Lcom/tebakgambar/component/CustomButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f1300ec

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-direct {p0}, Lj8/f1;->g()V

    return-void
.end method

.method public static synthetic a(Lj8/f1;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lj8/f1;->h(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lj8/f1;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lj8/f1;->i(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lj8/f1;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lj8/f1;->j(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method private g()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0d005d

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f0a02d7

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lj8/f1;->o:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02a8

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/f1;->p:Lcom/tebakgambar/component/CustomButton;

    const v0, 0x7f0a02a9

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/f1;->q:Lcom/tebakgambar/component/CustomButton;

    const v0, 0x7f0a02aa

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/f1;->r:Lcom/tebakgambar/component/CustomButton;

    return-void
.end method

.method private synthetic h(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x1

    .line 1
    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic i(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x2

    .line 1
    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic j(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x3

    .line 1
    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/f1;
    .registers 4

    .line 1
    iget-object v0, p0, Lj8/f1;->p:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lj8/f1;->p:Lcom/tebakgambar/component/CustomButton;

    new-instance v0, Lj8/c1;

    invoke-direct {v0, p0, p2}, Lj8/c1;-><init>(Lj8/f1;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/f1;
    .registers 4

    .line 1
    iget-object v0, p0, Lj8/f1;->q:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lj8/f1;->q:Lcom/tebakgambar/component/CustomButton;

    new-instance v0, Lj8/d1;

    invoke-direct {v0, p0, p2}, Lj8/d1;-><init>(Lj8/f1;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public f(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/f1;
    .registers 4

    .line 1
    iget-object v0, p0, Lj8/f1;->r:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lj8/f1;->r:Lcom/tebakgambar/component/CustomButton;

    new-instance v0, Lj8/e1;

    invoke-direct {v0, p0, p2}, Lj8/e1;-><init>(Lj8/f1;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public k(Ljava/lang/CharSequence;)Lj8/f1;
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/f1;->o:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lj8/f1;->o:Lcom/tebakgambar/component/CustomTextView;

    if-nez p1, :cond_c

    const/16 p1, 0x8

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p0
.end method

###### Class j8.c1 (j8.c1)
.class public final synthetic Lj8/c1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/f1;

.field public final synthetic p:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lj8/f1;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/c1;->o:Lj8/f1;

    iput-object p2, p0, Lj8/c1;->p:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lj8/c1;->o:Lj8/f1;

    iget-object v1, p0, Lj8/c1;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, p1}, Lj8/f1;->a(Lj8/f1;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

###### Class j8.d1 (j8.d1)
.class public final synthetic Lj8/d1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/f1;

.field public final synthetic p:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lj8/f1;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/d1;->o:Lj8/f1;

    iput-object p2, p0, Lj8/d1;->p:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lj8/d1;->o:Lj8/f1;

    iget-object v1, p0, Lj8/d1;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, p1}, Lj8/f1;->b(Lj8/f1;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

###### Class j8.e1 (j8.e1)
.class public final synthetic Lj8/e1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/f1;

.field public final synthetic p:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lj8/f1;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/e1;->o:Lj8/f1;

    iput-object p2, p0, Lj8/e1;->p:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lj8/e1;->o:Lj8/f1;

    iget-object v1, p0, Lj8/e1;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, p1}, Lj8/f1;->c(Lj8/f1;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method
