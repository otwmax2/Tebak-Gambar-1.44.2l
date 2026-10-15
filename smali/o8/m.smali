###### Class o8.m (o8.m)
.class public abstract Lo8/m;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityQuestionSelectionBinding.java"


# instance fields
.field public final O:Lcom/tebakgambar/component/CustomButton;

.field public final P:Landroid/widget/FrameLayout;

.field public final Q:Landroidx/recyclerview/widget/RecyclerView;

.field public final R:Landroid/widget/RelativeLayout;

.field public final S:Lcom/tebakgambar/component/CustomTextView;

.field protected T:Lcom/tebakgambar/levelselection/j0;

.field protected U:Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/tebakgambar/component/CustomButton;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Lcom/tebakgambar/component/CustomTextView;)V
    .registers 9

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo8/m;->O:Lcom/tebakgambar/component/CustomButton;

    .line 3
    iput-object p5, p0, Lo8/m;->P:Landroid/widget/FrameLayout;

    .line 4
    iput-object p6, p0, Lo8/m;->Q:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object p7, p0, Lo8/m;->R:Landroid/widget/RelativeLayout;

    .line 6
    iput-object p8, p0, Lo8/m;->S:Lcom/tebakgambar/component/CustomTextView;

    return-void
.end method


# virtual methods
.method public abstract u0(Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;)V
.end method

.method public abstract w0(Lcom/tebakgambar/levelselection/j0;)V
.end method
