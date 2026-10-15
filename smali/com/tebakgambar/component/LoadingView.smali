###### Class com.tebakgambar.component.LoadingView (com.tebakgambar.component.LoadingView)
.class public Lcom/tebakgambar/component/LoadingView;
.super Landroid/widget/FrameLayout;
.source "LoadingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/component/LoadingView$a;
    }
.end annotation


# instance fields
.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/tebakgambar/component/LoadingView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/component/LoadingView;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/component/LoadingView;->p:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/component/LoadingView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/component/LoadingView;->r:Lcom/tebakgambar/component/LoadingView$a;

    if-eqz p1, :cond_7

    .line 2
    invoke-interface {p1}, Lcom/tebakgambar/component/LoadingView$a;->a()V

    .line 3
    :cond_7
    invoke-virtual {p0}, Lcom/tebakgambar/component/LoadingView;->a()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a020b

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tebakgambar/component/LoadingView;->o:Landroid/widget/TextView;

    const v0, 0x7f0a008f

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tebakgambar/component/LoadingView;->p:Landroid/widget/Button;

    const v0, 0x7f0a02bd

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tebakgambar/component/LoadingView;->q:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/component/LoadingView;->p:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setListener(Lcom/tebakgambar/component/LoadingView$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/component/LoadingView;->r:Lcom/tebakgambar/component/LoadingView$a;

    return-void
.end method

###### Class com.tebakgambar.component.LoadingView.a (com.tebakgambar.component.LoadingView$a)
.class public interface abstract Lcom/tebakgambar/component/LoadingView$a;
.super Ljava/lang/Object;
.source "LoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/component/LoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method
