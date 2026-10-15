###### Class o8.a (o8.a)
.class public abstract Lo8/a;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityClueEventTutorialBinding.java"


# instance fields
.field public final O:Lcom/tebakgambar/component/CustomButton;

.field public final P:Landroid/widget/FrameLayout;

.field public final Q:Lcom/tebakgambar/component/CustomListView;

.field public final R:Lo8/e0;

.field public final S:Lcom/tebakgambar/component/CustomTextView;

.field protected T:Lcom/tebakgambar/tutorial/d;

.field protected U:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/tebakgambar/component/CustomButton;Landroid/widget/FrameLayout;Lcom/tebakgambar/component/CustomListView;Lo8/e0;Lcom/tebakgambar/component/CustomTextView;)V
    .registers 9

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo8/a;->O:Lcom/tebakgambar/component/CustomButton;

    .line 3
    iput-object p5, p0, Lo8/a;->P:Landroid/widget/FrameLayout;

    .line 4
    iput-object p6, p0, Lo8/a;->Q:Lcom/tebakgambar/component/CustomListView;

    .line 5
    iput-object p7, p0, Lo8/a;->R:Lo8/e0;

    .line 6
    iput-object p8, p0, Lo8/a;->S:Lcom/tebakgambar/component/CustomTextView;

    return-void
.end method


# virtual methods
.method public abstract u0(Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;)V
.end method

.method public abstract w0(Lcom/tebakgambar/tutorial/d;)V
.end method
