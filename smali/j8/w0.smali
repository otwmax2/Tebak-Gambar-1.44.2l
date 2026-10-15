###### Class j8.w0 (j8.w0)
.class public Lj8/w0;
.super Landroid/app/Dialog;
.source "NewShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj8/w0$a;
    }
.end annotation


# instance fields
.field o:Lo8/k0;

.field private p:Lj8/w0$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f1300ec

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-direct {p0}, Lj8/w0;->f()V

    return-void
.end method

.method public static synthetic a(Lj8/w0;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/w0;->g(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lj8/w0;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/w0;->j(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lj8/w0;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/w0;->k(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lj8/w0;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/w0;->i(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lj8/w0;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/w0;->h(Landroid/view/View;)V

    return-void
.end method

.method private f()V
    .registers 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0056

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/databinding/g;->h(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lo8/k0;

    iput-object v0, p0, Lj8/w0;->o:Lo8/k0;

    .line 3
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ly8/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 5
    iget-object v0, p0, Lj8/w0;->o:Lo8/k0;

    iget-object v0, v0, Lo8/k0;->V:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    :cond_2f
    iget-object v0, p0, Lj8/w0;->o:Lo8/k0;

    iget-object v0, v0, Lo8/k0;->U:Landroid/widget/RelativeLayout;

    new-instance v1, Lj8/r0;

    invoke-direct {v1, p0}, Lj8/r0;-><init>(Lj8/w0;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lj8/w0;->o:Lo8/k0;

    iget-object v0, v0, Lo8/k0;->X:Landroid/widget/RelativeLayout;

    new-instance v1, Lj8/v0;

    invoke-direct {v1, p0}, Lj8/v0;-><init>(Lj8/w0;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lj8/w0;->o:Lo8/k0;

    iget-object v0, v0, Lo8/k0;->V:Landroid/widget/RelativeLayout;

    new-instance v1, Lj8/u0;

    invoke-direct {v1, p0}, Lj8/u0;-><init>(Lj8/w0;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lj8/w0;->o:Lo8/k0;

    iget-object v0, v0, Lo8/k0;->W:Landroid/widget/RelativeLayout;

    new-instance v1, Lj8/s0;

    invoke-direct {v1, p0}, Lj8/s0;-><init>(Lj8/w0;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lj8/w0;->o:Lo8/k0;

    iget-object v0, v0, Lo8/k0;->O:Lcom/tebakgambar/component/CustomButton;

    new-instance v1, Lj8/t0;

    invoke-direct {v1, p0}, Lj8/t0;-><init>(Lj8/w0;)V

    invoke-virtual {v0, v1}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic g(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lj8/w0;->p:Lj8/w0$a;

    if-eqz p1, :cond_7

    .line 2
    invoke-interface {p1}, Lj8/w0$a;->c()V

    :cond_7
    return-void
.end method

.method private synthetic h(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lj8/w0;->p:Lj8/w0$a;

    if-eqz p1, :cond_7

    .line 2
    invoke-interface {p1}, Lj8/w0$a;->b()V

    :cond_7
    return-void
.end method

.method private synthetic i(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lj8/w0;->p:Lj8/w0$a;

    if-eqz p1, :cond_7

    .line 2
    invoke-interface {p1}, Lj8/w0$a;->a()V

    :cond_7
    return-void
.end method

.method private synthetic j(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lj8/w0;->p:Lj8/w0$a;

    if-eqz p1, :cond_7

    .line 2
    invoke-interface {p1}, Lj8/w0$a;->d()V

    :cond_7
    return-void
.end method

.method private synthetic k(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public l(Lj8/w0$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/w0;->p:Lj8/w0$a;

    return-void
.end method

###### Class j8.w0.a (j8.w0$a)
.class public interface abstract Lj8/w0$a;
.super Ljava/lang/Object;
.source "NewShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj8/w0;
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

.method public abstract d()V
.end method

###### Class j8.r0 (j8.r0)
.class public final synthetic Lj8/r0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/w0;


# direct methods
.method public synthetic constructor <init>(Lj8/w0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/r0;->o:Lj8/w0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lj8/r0;->o:Lj8/w0;

    invoke-static {v0, p1}, Lj8/w0;->a(Lj8/w0;Landroid/view/View;)V

    return-void
.end method

###### Class j8.s0 (j8.s0)
.class public final synthetic Lj8/s0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/w0;


# direct methods
.method public synthetic constructor <init>(Lj8/w0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/s0;->o:Lj8/w0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lj8/s0;->o:Lj8/w0;

    invoke-static {v0, p1}, Lj8/w0;->b(Lj8/w0;Landroid/view/View;)V

    return-void
.end method

###### Class j8.t0 (j8.t0)
.class public final synthetic Lj8/t0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/w0;


# direct methods
.method public synthetic constructor <init>(Lj8/w0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/t0;->o:Lj8/w0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lj8/t0;->o:Lj8/w0;

    invoke-static {v0, p1}, Lj8/w0;->c(Lj8/w0;Landroid/view/View;)V

    return-void
.end method

###### Class j8.u0 (j8.u0)
.class public final synthetic Lj8/u0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/w0;


# direct methods
.method public synthetic constructor <init>(Lj8/w0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/u0;->o:Lj8/w0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lj8/u0;->o:Lj8/w0;

    invoke-static {v0, p1}, Lj8/w0;->d(Lj8/w0;Landroid/view/View;)V

    return-void
.end method

###### Class j8.v0 (j8.v0)
.class public final synthetic Lj8/v0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/w0;


# direct methods
.method public synthetic constructor <init>(Lj8/w0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/v0;->o:Lj8/w0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lj8/v0;->o:Lj8/w0;

    invoke-static {v0, p1}, Lj8/w0;->e(Lj8/w0;Landroid/view/View;)V

    return-void
.end method
