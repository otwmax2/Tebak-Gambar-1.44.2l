###### Class o8.m0 (o8.m0)
.class public abstract Lo8/m0;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutDialogShareBinding.java"


# instance fields
.field public final O:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final P:Landroid/widget/ImageView;

.field public final Q:Lcom/tebakgambar/component/CustomButton;

.field public final R:Lcom/tebakgambar/component/CustomButton;

.field public final S:Lcom/tebakgambar/component/CustomButton;

.field public final T:Lcom/tebakgambar/component/CustomTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/tebakgambar/component/CustomButton;Lcom/tebakgambar/component/CustomButton;Lcom/tebakgambar/component/CustomButton;Lcom/tebakgambar/component/CustomTextView;)V
    .registers 10

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo8/m0;->O:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p5, p0, Lo8/m0;->P:Landroid/widget/ImageView;

    .line 4
    iput-object p6, p0, Lo8/m0;->Q:Lcom/tebakgambar/component/CustomButton;

    .line 5
    iput-object p7, p0, Lo8/m0;->R:Lcom/tebakgambar/component/CustomButton;

    .line 6
    iput-object p8, p0, Lo8/m0;->S:Lcom/tebakgambar/component/CustomButton;

    .line 7
    iput-object p9, p0, Lo8/m0;->T:Lcom/tebakgambar/component/CustomTextView;

    return-void
.end method

.method public static u0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo8/m0;
    .registers 4

    .line 1
    invoke-static {}, Landroidx/databinding/g;->g()Landroidx/databinding/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo8/m0;->w0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo8/m0;

    move-result-object p0

    return-object p0
.end method

.method public static w0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo8/m0;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d005a

    .line 1
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->X(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo8/m0;

    return-object p0
.end method
