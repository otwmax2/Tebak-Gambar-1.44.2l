###### Class j8.h0 (j8.h0)
.class public Lj8/h0;
.super Landroid/app/Dialog;
.source "FourButtonDialog.java"


# instance fields
.field private o:Lcom/tebakgambar/component/CustomTextView;

.field private p:Lcom/tebakgambar/component/CustomButton;

.field private q:Lcom/tebakgambar/component/CustomButton;

.field private r:Lcom/tebakgambar/component/CustomButton;

.field private s:Lcom/tebakgambar/component/CustomButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f1300ec

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-direct {p0}, Lj8/h0;->i()V

    return-void
.end method

.method public static synthetic a(Lj8/h0;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lj8/h0;->m(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lj8/h0;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lj8/h0;->k(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lj8/h0;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lj8/h0;->j(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lj8/h0;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lj8/h0;->l(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method private i()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0d0053

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f0a02d7

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lj8/h0;->o:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02a8

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/h0;->p:Lcom/tebakgambar/component/CustomButton;

    const v0, 0x7f0a02a9

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/h0;->q:Lcom/tebakgambar/component/CustomButton;

    const v0, 0x7f0a02aa

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/h0;->r:Lcom/tebakgambar/component/CustomButton;

    const v0, 0x7f0a02ab

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/h0;->s:Lcom/tebakgambar/component/CustomButton;

    return-void
.end method

.method private synthetic j(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x1

    .line 1
    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic k(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x2

    .line 1
    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic l(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x3

    .line 1
    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic m(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x4

    .line 1
    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/h0;
    .registers 4

    .line 1
    iget-object v0, p0, Lj8/h0;->p:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lj8/h0;->p:Lcom/tebakgambar/component/CustomButton;

    new-instance v0, Lj8/f0;

    invoke-direct {v0, p0, p2}, Lj8/f0;-><init>(Lj8/h0;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public f(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/h0;
    .registers 4

    .line 1
    iget-object v0, p0, Lj8/h0;->q:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lj8/h0;->q:Lcom/tebakgambar/component/CustomButton;

    new-instance v0, Lj8/e0;

    invoke-direct {v0, p0, p2}, Lj8/e0;-><init>(Lj8/h0;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public g(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/h0;
    .registers 4

    .line 1
    iget-object v0, p0, Lj8/h0;->r:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lj8/h0;->r:Lcom/tebakgambar/component/CustomButton;

    new-instance v0, Lj8/g0;

    invoke-direct {v0, p0, p2}, Lj8/g0;-><init>(Lj8/h0;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public h(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/h0;
    .registers 4

    .line 1
    iget-object v0, p0, Lj8/h0;->s:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lj8/h0;->s:Lcom/tebakgambar/component/CustomButton;

    new-instance v0, Lj8/d0;

    invoke-direct {v0, p0, p2}, Lj8/d0;-><init>(Lj8/h0;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public n(Ljava/lang/CharSequence;)Lj8/h0;
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/h0;->o:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

###### Class j8.d0 (j8.d0)
.class public final synthetic Lj8/d0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/h0;

.field public final synthetic p:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lj8/h0;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/d0;->o:Lj8/h0;

    iput-object p2, p0, Lj8/d0;->p:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lj8/d0;->o:Lj8/h0;

    iget-object v1, p0, Lj8/d0;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, p1}, Lj8/h0;->a(Lj8/h0;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

###### Class j8.e0 (j8.e0)
.class public final synthetic Lj8/e0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/h0;

.field public final synthetic p:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lj8/h0;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/e0;->o:Lj8/h0;

    iput-object p2, p0, Lj8/e0;->p:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lj8/e0;->o:Lj8/h0;

    iget-object v1, p0, Lj8/e0;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, p1}, Lj8/h0;->b(Lj8/h0;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

###### Class j8.f0 (j8.f0)
.class public final synthetic Lj8/f0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/h0;

.field public final synthetic p:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lj8/h0;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/f0;->o:Lj8/h0;

    iput-object p2, p0, Lj8/f0;->p:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lj8/f0;->o:Lj8/h0;

    iget-object v1, p0, Lj8/f0;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, p1}, Lj8/h0;->c(Lj8/h0;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

###### Class j8.g0 (j8.g0)
.class public final synthetic Lj8/g0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/h0;

.field public final synthetic p:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lj8/h0;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/g0;->o:Lj8/h0;

    iput-object p2, p0, Lj8/g0;->p:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lj8/g0;->o:Lj8/h0;

    iget-object v1, p0, Lj8/g0;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, p1}, Lj8/h0;->d(Lj8/h0;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method
