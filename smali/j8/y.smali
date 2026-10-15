###### Class j8.y (j8.y)
.class public Lj8/y;
.super Landroid/app/Dialog;
.source "CustomDialogChoosePhoto.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj8/y$a;
    }
.end annotation


# instance fields
.field o:Landroid/content/Context;

.field p:Lcom/tebakgambar/component/CustomButton;

.field q:Lcom/tebakgambar/component/CustomButton;

.field r:Lcom/tebakgambar/component/CustomButton;

.field s:Lj8/y$a;

.field t:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lj8/y;->o:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lj8/y;->a()V

    return-void
.end method

.method private a()V
    .registers 7

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0d0051

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const v2, 0x7f0a007f

    .line 4
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tebakgambar/component/CustomButton;

    iput-object v2, p0, Lj8/y;->p:Lcom/tebakgambar/component/CustomButton;

    const v2, 0x7f0a0080

    .line 5
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tebakgambar/component/CustomButton;

    iput-object v2, p0, Lj8/y;->q:Lcom/tebakgambar/component/CustomButton;

    const v2, 0x7f0a0085

    .line 6
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tebakgambar/component/CustomButton;

    iput-object v2, p0, Lj8/y;->r:Lcom/tebakgambar/component/CustomButton;

    .line 7
    iget-object v3, p0, Lj8/y;->t:[Ljava/lang/String;

    const/16 v4, 0x8

    if-eqz v3, :cond_73

    .line 8
    array-length v3, v3

    const/4 v5, 0x2

    if-le v3, v5, :cond_5d

    .line 9
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 10
    iget-object v2, p0, Lj8/y;->r:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v2, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v2, p0, Lj8/y;->r:Lcom/tebakgambar/component/CustomButton;

    iget-object v3, p0, Lj8/y;->t:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, p0, Lj8/y;->p:Lcom/tebakgambar/component/CustomButton;

    iget-object v2, p0, Lj8/y;->t:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lj8/y;->q:Lcom/tebakgambar/component/CustomButton;

    iget-object v1, p0, Lj8/y;->t:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_76

    .line 14
    :cond_5d
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 15
    iget-object v1, p0, Lj8/y;->p:Lcom/tebakgambar/component/CustomButton;

    iget-object v2, p0, Lj8/y;->t:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lj8/y;->q:Lcom/tebakgambar/component/CustomButton;

    iget-object v1, p0, Lj8/y;->t:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_76

    .line 17
    :cond_73
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 18
    :goto_76
    iget-object v0, p0, Lj8/y;->p:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lj8/y;->q:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public b(Lj8/y$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/y;->s:Lj8/y$a;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/y;->p:Lcom/tebakgambar/component/CustomButton;

    if-ne p1, v0, :cond_a

    .line 2
    iget-object p1, p0, Lj8/y;->s:Lj8/y$a;

    invoke-interface {p1}, Lj8/y$a;->a()V

    goto :goto_1d

    .line 3
    :cond_a
    iget-object v0, p0, Lj8/y;->q:Lcom/tebakgambar/component/CustomButton;

    if-ne p1, v0, :cond_14

    .line 4
    iget-object p1, p0, Lj8/y;->s:Lj8/y$a;

    invoke-interface {p1}, Lj8/y$a;->b()V

    goto :goto_1d

    .line 5
    :cond_14
    iget-object v0, p0, Lj8/y;->r:Lcom/tebakgambar/component/CustomButton;

    if-ne p1, v0, :cond_1d

    .line 6
    iget-object p1, p0, Lj8/y;->s:Lj8/y$a;

    invoke-interface {p1}, Lj8/y$a;->c()V

    :cond_1d
    :goto_1d
    return-void
.end method

###### Class j8.y.a (j8.y$a)
.class public interface abstract Lj8/y$a;
.super Ljava/lang/Object;
.source "CustomDialogChoosePhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj8/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method
