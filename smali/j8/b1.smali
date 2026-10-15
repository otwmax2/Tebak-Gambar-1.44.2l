###### Class j8.b1 (j8.b1)
.class public Lj8/b1;
.super Landroid/app/Dialog;
.source "OneButtonDialog.java"


# instance fields
.field private o:Lcom/tebakgambar/component/CustomTextView;

.field private p:Lcom/tebakgambar/component/CustomTextView;

.field private q:Lcom/tebakgambar/component/CustomButton;

.field private r:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f1300ec

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-direct {p0}, Lj8/b1;->d()V

    return-void
.end method

.method public static synthetic a(Lj8/b1;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lj8/b1;->f(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lj8/b1;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lj8/b1;->e(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method private d()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0d004b

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f0a02c5

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lj8/b1;->p:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02d7

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lj8/b1;->o:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02a8

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/b1;->q:Lcom/tebakgambar/component/CustomButton;

    const v0, 0x7f0a014b

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lj8/b1;->r:Landroid/widget/ImageView;

    return-void
.end method

.method private synthetic e(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x1

    .line 1
    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic f(Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x3

    .line 1
    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/b1;
    .registers 4

    .line 1
    iget-object v0, p0, Lj8/b1;->q:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lj8/b1;->q:Lcom/tebakgambar/component/CustomButton;

    new-instance v0, Lj8/a1;

    invoke-direct {v0, p0, p2}, Lj8/a1;-><init>(Lj8/b1;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public g(Ljava/lang/CharSequence;)Lj8/b1;
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/b1;->o:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public h(Landroid/content/DialogInterface$OnClickListener;)Lj8/b1;
    .registers 4

    .line 1
    iget-object v0, p0, Lj8/b1;->r:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lj8/b1;->r:Landroid/widget/ImageView;

    new-instance v1, Lj8/z0;

    invoke-direct {v1, p0, p1}, Lj8/z0;-><init>(Lj8/b1;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

###### Class j8.a1 (j8.a1)
.class public final synthetic Lj8/a1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/b1;

.field public final synthetic p:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lj8/b1;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/a1;->o:Lj8/b1;

    iput-object p2, p0, Lj8/a1;->p:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lj8/a1;->o:Lj8/b1;

    iget-object v1, p0, Lj8/a1;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, p1}, Lj8/b1;->b(Lj8/b1;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method

###### Class j8.z0 (j8.z0)
.class public final synthetic Lj8/z0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/b1;

.field public final synthetic p:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lj8/b1;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/z0;->o:Lj8/b1;

    iput-object p2, p0, Lj8/z0;->p:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lj8/z0;->o:Lj8/b1;

    iget-object v1, p0, Lj8/z0;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, p1}, Lj8/b1;->a(Lj8/b1;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method
