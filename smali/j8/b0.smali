###### Class j8.b0 (j8.b0)
.class public Lj8/b0;
.super Landroid/app/Dialog;
.source "CustomDialogPromote.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj8/b0$a;
    }
.end annotation


# instance fields
.field public o:Lcom/tebakgambar/component/CustomImageView;

.field public p:Lcom/tebakgambar/component/CustomButton;

.field public q:Lcom/tebakgambar/component/CustomButton;

.field r:Lj8/b0$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const p1, 0x7f0d0057

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f0a015c

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/component/CustomImageView;

    iput-object p1, p0, Lj8/b0;->o:Lcom/tebakgambar/component/CustomImageView;

    const p1, 0x7f0a02b5

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/component/CustomButton;

    iput-object p1, p0, Lj8/b0;->p:Lcom/tebakgambar/component/CustomButton;

    const p1, 0x7f0a02a4

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/component/CustomButton;

    iput-object p1, p0, Lj8/b0;->q:Lcom/tebakgambar/component/CustomButton;

    .line 7
    iget-object p1, p0, Lj8/b0;->o:Lcom/tebakgambar/component/CustomImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lj8/b0;->p:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lj8/b0;->q:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public a(Lj8/b0$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/b0;->r:Lj8/b0$a;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/b0;->p:Lcom/tebakgambar/component/CustomButton;

    if-ne p1, v0, :cond_a

    .line 2
    iget-object p1, p0, Lj8/b0;->r:Lj8/b0$a;

    invoke-interface {p1}, Lj8/b0$a;->b()V

    goto :goto_1d

    .line 3
    :cond_a
    iget-object v0, p0, Lj8/b0;->q:Lcom/tebakgambar/component/CustomButton;

    if-ne p1, v0, :cond_14

    .line 4
    iget-object p1, p0, Lj8/b0;->r:Lj8/b0$a;

    invoke-interface {p1}, Lj8/b0$a;->a()V

    goto :goto_1d

    .line 5
    :cond_14
    iget-object v0, p0, Lj8/b0;->o:Lcom/tebakgambar/component/CustomImageView;

    if-ne p1, v0, :cond_1d

    .line 6
    iget-object p1, p0, Lj8/b0;->r:Lj8/b0$a;

    invoke-interface {p1}, Lj8/b0$a;->c()V

    :cond_1d
    :goto_1d
    return-void
.end method

###### Class j8.b0.a (j8.b0$a)
.class public interface abstract Lj8/b0$a;
.super Ljava/lang/Object;
.source "CustomDialogPromote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj8/b0;
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
