###### Class o8.q (o8.q)
.class public abstract Lo8/q;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivitySelfieFrameChooserBinding.java"


# instance fields
.field public final O:Landroid/widget/FrameLayout;

.field public final P:Landroidx/recyclerview/widget/RecyclerView;

.field public final Q:Lo8/e0;

.field protected R:Lcom/tebakgambar/selfie/i;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Lo8/e0;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo8/q;->O:Landroid/widget/FrameLayout;

    .line 3
    iput-object p5, p0, Lo8/q;->P:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object p6, p0, Lo8/q;->Q:Lo8/e0;

    return-void
.end method


# virtual methods
.method public abstract u0(Lcom/tebakgambar/selfie/i;)V
.end method
