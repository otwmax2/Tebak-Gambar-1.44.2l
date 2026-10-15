###### Class com.tebakgambar.QuotesActivity (com.tebakgambar.QuotesActivity)
.class public Lcom/tebakgambar/QuotesActivity;
.super Landroidx/fragment/app/e;
.source "QuotesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ly8/w$g;


# instance fields
.field private A:Landroid/widget/RelativeLayout;

.field private B:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private C:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private D:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private E:Lcom/tebakgambar/component/CustomImageView;

.field private F:Landroid/view/View;

.field private G:Lcom/tebakgambar/component/CustomButton;

.field private H:Landroidx/appcompat/widget/AppCompatImageView;

.field private I:Landroidx/appcompat/widget/AppCompatImageView;

.field private J:Landroid/widget/LinearLayout;

.field private K:Landroidx/constraintlayout/widget/ConstraintLayout;

.field L:Landroid/app/Dialog;

.field private M:Lcom/tebakgambar/model/ResultEventClue;

.field private N:Ljava/lang/Runnable;

.field private O:Landroid/net/Uri;

.field private P:Ly8/w;

.field private Q:Lj8/k0;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Lcom/tebakgambar/model/ResultEvents;

.field private s:Lcom/tebakgambar/component/CustomTextView;

.field private t:Lcom/tebakgambar/component/CustomTextView;

.field private u:Lcom/tebakgambar/component/CustomTextView;

.field private v:Lcom/tebakgambar/component/CustomTextView;

.field private w:Lcom/tebakgambar/component/CustomTextView;

.field private x:Lcom/tebakgambar/component/CustomButton;

.field private y:Lcom/tebakgambar/component/CustomButton;

.field private z:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/e;-><init>()V

    return-void
.end method

.method private synthetic A0(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->L:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic B0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->P:Ly8/w;

    iget-object v1, p0, Lcom/tebakgambar/QuotesActivity;->O:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ly8/w;->B(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic C(Lcom/tebakgambar/QuotesActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/QuotesActivity;->w0()V

    return-void
.end method

.method private C0()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Lg8/c;

    invoke-direct {v1, p0}, Lg8/c;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/tebakgambar/QuotesActivity;->h0(ZLjava/lang/Runnable;)V
    :try_end_9
    .catch Ly8/n; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_1e

    :catch_a
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    new-instance v1, Lg8/f;

    invoke-direct {v1, p0}, Lg8/f;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    iput-object v1, p0, Lcom/tebakgambar/QuotesActivity;->N:Ljava/lang/Runnable;

    .line 4
    invoke-virtual {v0}, Ly8/n;->a()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x37

    invoke-static {p0, v0, v1}, Landroidx/core/app/b;->t(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1e
    return-void
.end method

.method public static synthetic D(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/QuotesActivity;->v0(Landroid/view/View;)V

    return-void
.end method

.method private D0()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->L:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-nez v0, :cond_35

    .line 2
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->L:Landroid/app/Dialog;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->L:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->L:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->L:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_40

    .line 7
    :cond_35
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->L:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    :cond_40
    :goto_40
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lo8/m0;->u0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo8/m0;

    move-result-object v0

    .line 10
    iget-object v1, v0, Lo8/m0;->P:Landroid/widget/ImageView;

    new-instance v2, Lg8/p;

    invoke-direct {v2, p0}, Lg8/p;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v1, v0, Lo8/m0;->Q:Lcom/tebakgambar/component/CustomButton;

    new-instance v2, Lg8/m;

    invoke-direct {v2, p0}, Lg8/m;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    invoke-virtual {v1, v2}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v1, v0, Lo8/m0;->R:Lcom/tebakgambar/component/CustomButton;

    new-instance v2, Lg8/l;

    invoke-direct {v2, p0}, Lg8/l;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    invoke-virtual {v1, v2}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v1, v0, Lo8/m0;->S:Lcom/tebakgambar/component/CustomButton;

    new-instance v2, Lg8/n;

    invoke-direct {v2, p0}, Lg8/n;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    invoke-virtual {v1, v2}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v1, p0, Lcom/tebakgambar/QuotesActivity;->L:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 15
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->L:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic E(Lcom/tebakgambar/QuotesActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/QuotesActivity;->B0()V

    return-void
.end method

.method private E0()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Lg8/d;

    invoke-direct {v1, p0}, Lg8/d;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/tebakgambar/QuotesActivity;->h0(ZLjava/lang/Runnable;)V
    :try_end_9
    .catch Ly8/n; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_1e

    :catch_a
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    new-instance v1, Lg8/e;

    invoke-direct {v1, p0}, Lg8/e;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    iput-object v1, p0, Lcom/tebakgambar/QuotesActivity;->N:Ljava/lang/Runnable;

    .line 4
    invoke-virtual {v0}, Ly8/n;->a()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x37

    invoke-static {p0, v0, v1}, Landroidx/core/app/b;->t(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1e
    return-void
.end method

.method public static synthetic F(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/QuotesActivity;->y0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G(Lcom/tebakgambar/QuotesActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/QuotesActivity;->E0()V

    return-void
.end method

.method public static synthetic H(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/QuotesActivity;->x0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic I(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/QuotesActivity;->z0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic J(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/QuotesActivity;->n0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic K(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/QuotesActivity;->A0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic L(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/QuotesActivity;->q0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic M(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/QuotesActivity;->o0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcom/tebakgambar/QuotesActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/QuotesActivity;->C0()V

    return-void
.end method

.method public static synthetic O(Lcom/tebakgambar/QuotesActivity;)Lcom/tebakgambar/model/Level;
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/QuotesActivity;->t0()Lcom/tebakgambar/model/Level;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/QuotesActivity;->r0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/QuotesActivity;->p0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/QuotesActivity;->s0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S(Lcom/tebakgambar/QuotesActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/QuotesActivity;->m0()V

    return-void
.end method

.method public static synthetic T(Lcom/tebakgambar/QuotesActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/QuotesActivity;->l0()V

    return-void
.end method

.method public static synthetic U(Lcom/tebakgambar/QuotesActivity;Lt1/h;)Lt1/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/QuotesActivity;->u0(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method static synthetic V(Lcom/tebakgambar/QuotesActivity;)Landroidx/appcompat/widget/AppCompatImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/QuotesActivity;->H:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method static synthetic W(Lcom/tebakgambar/QuotesActivity;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/QuotesActivity;->F:Landroid/view/View;

    return-object p0
.end method

.method static synthetic X(Lcom/tebakgambar/QuotesActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity;->O:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic Y(Lcom/tebakgambar/QuotesActivity;)Lcom/tebakgambar/component/CustomImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/QuotesActivity;->E:Lcom/tebakgambar/component/CustomImageView;

    return-object p0
.end method

.method static synthetic Z(Lcom/tebakgambar/QuotesActivity;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/QuotesActivity;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a0(Lcom/tebakgambar/QuotesActivity;)Lcom/tebakgambar/model/ResultEvents;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/QuotesActivity;->r:Lcom/tebakgambar/model/ResultEvents;

    return-object p0
.end method

.method static synthetic b0(Lcom/tebakgambar/QuotesActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/QuotesActivity;->i0()V

    return-void
.end method

.method static synthetic c0(Lcom/tebakgambar/QuotesActivity;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/QuotesActivity;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e0(Lcom/tebakgambar/QuotesActivity;)Lcom/tebakgambar/model/ResultEventClue;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/QuotesActivity;->M:Lcom/tebakgambar/model/ResultEventClue;

    return-object p0
.end method

.method static synthetic f0(Lcom/tebakgambar/QuotesActivity;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/tebakgambar/QuotesActivity;->z:I

    return p0
.end method

.method static synthetic g0(Lcom/tebakgambar/QuotesActivity;)Lj8/k0;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/QuotesActivity;->Q:Lj8/k0;

    return-object p0
.end method

.method private h0(ZLjava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ly8/n;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    const v1, 0x7f0a0120

    invoke-virtual {v0, v1}, Landroidx/fragment/app/n;->h0(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lj8/k0;

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->Q:Lj8/k0;

    if-nez v0, :cond_30

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/n;->m()Landroidx/fragment/app/w;

    move-result-object v0

    .line 3
    new-instance v2, Lj8/k0;

    invoke-direct {v2}, Lj8/k0;-><init>()V

    .line 4
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/w;->m(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/w;->f()I

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/n;->h0(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lj8/k0;

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->Q:Lj8/k0;

    .line 7
    :cond_30
    new-instance v0, Lcom/tebakgambar/QuotesActivity$d;

    invoke-direct {v0, p0, p2}, Lcom/tebakgambar/QuotesActivity$d;-><init>(Lcom/tebakgambar/QuotesActivity;Ljava/lang/Runnable;)V

    new-instance p2, Lt1/e;

    invoke-direct {p2}, Lt1/e;-><init>()V

    .line 8
    invoke-virtual {p2}, Lt1/e;->d()Lt1/c;

    move-result-object p2

    .line 9
    invoke-static {p1, p0, v0, p2}, Ly8/s;->d(ZLandroid/app/Activity;Ly8/s$a;Lt1/c;)V

    return-void
.end method

.method private i0()V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->e()Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x24000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private j0()V
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/QuotesActivity$c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/tebakgambar/QuotesActivity$c;-><init>(Lcom/tebakgambar/QuotesActivity;Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/activity/OnBackPressedDispatcher;->b(Landroidx/activity/g;)V

    return-void
.end method

.method private k0()V
    .registers 4

    .line 1
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->L:Landroid/app/Dialog;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->L:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->L:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private l0()V
    .registers 9

    .line 1
    invoke-static {p0}, Ly8/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    .line 2
    :try_start_7
    new-instance v1, Lg8/g;

    invoke-direct {v1, p0}, Lg8/g;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/tebakgambar/QuotesActivity;->h0(ZLjava/lang/Runnable;)V
    :try_end_f
    .catch Ly8/n; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_41

    :catch_10
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    new-instance v1, Lg8/h;

    invoke-direct {v1, p0}, Lg8/h;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    iput-object v1, p0, Lcom/tebakgambar/QuotesActivity;->N:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v0}, Ly8/n;->a()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x37

    invoke-static {p0, v0, v1}, Landroidx/core/app/b;->t(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_41

    .line 6
    :cond_25
    new-instance v0, Lj8/c0;

    const v4, 0x7f1300ec

    const/4 v5, 0x1

    const v1, 0x7f1200e7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v1, 0x7f0701e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-virtual {v0}, Lj8/c0;->show()V

    :goto_41
    return-void
.end method

.method private synthetic m0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->P:Ly8/w;

    iget-object v1, p0, Lcom/tebakgambar/QuotesActivity;->O:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ly8/w;->y(Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic n0(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->o:Ljava/lang/String;

    invoke-static {p0, p1}, Ly8/y;->e0(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->o:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ly8/y;->h0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->q:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "event_clue"

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->p:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tebakgambar/AdsActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tebakgambar/QuotesActivity;->M:Lcom/tebakgambar/model/ResultEventClue;

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "isMainLagi"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_51

    .line 8
    :cond_3d
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tebakgambar/QuotesActivity;->M:Lcom/tebakgambar/model/ResultEventClue;

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 11
    :goto_51
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic o0(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->M:Lcom/tebakgambar/model/ResultEventClue;

    iget-object p1, p1, Lcom/tebakgambar/model/BaseEvent;->mascot_image_url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "event_clue"

    if-eqz p1, :cond_21

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tebakgambar/AdsActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tebakgambar/QuotesActivity;->M:Lcom/tebakgambar/model/ResultEventClue;

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_35

    .line 5
    :cond_21
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tebakgambar/QuotesActivity;->M:Lcom/tebakgambar/model/ResultEventClue;

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 8
    :goto_35
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic p0(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/QuotesActivity;->D0()V

    return-void
.end method

.method private synthetic q0(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->o:Ljava/lang/String;

    const-string v0, "0"

    invoke-static {p0, p1, v0}, Ly8/y;->x0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->o:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ly8/y;->h0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->q:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "event_data"

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->p:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tebakgambar/AdsActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tebakgambar/QuotesActivity;->r:Lcom/tebakgambar/model/ResultEvents;

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "isMainLagi"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_53

    .line 8
    :cond_3f
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tebakgambar/QuotesActivity;->r:Lcom/tebakgambar/model/ResultEvents;

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 11
    :goto_53
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic r0(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->o:Ljava/lang/String;

    invoke-static {p0, p1}, Ly8/y;->P(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "event_data"

    if-eqz p1, :cond_25

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tebakgambar/QuotesActivity;->r:Lcom/tebakgambar/model/ResultEvents;

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_87

    .line 5
    :cond_25
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->o:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/tebakgambar/QuotesActivity;->o:Ljava/lang/String;

    const-string v2, "-1"

    invoke-static {p1, v1, v2}, Ly8/y;->x0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/tebakgambar/QuotesActivity;->o:Ljava/lang/String;

    const-string v2, "-2"

    invoke-static {p1, v1, v2}, Ly8/y;->w0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tebakgambar/QuotesActivity;->r:Lcom/tebakgambar/model/ResultEvents;

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_87

    .line 11
    :cond_5a
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->r:Lcom/tebakgambar/model/ResultEvents;

    if-eqz p1, :cond_73

    .line 12
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tebakgambar/QuotesActivity;->r:Lcom/tebakgambar/model/ResultEvents;

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_87

    .line 15
    :cond_73
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tebakgambar/AdsActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tebakgambar/QuotesActivity;->r:Lcom/tebakgambar/model/ResultEvents;

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 18
    :goto_87
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic s0(Landroid/view/View;)V
    .registers 4

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->r:Lcom/tebakgambar/model/ResultEvents;

    const-string v1, "event_data"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic t0()Lcom/tebakgambar/model/Level;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/tebakgambar/QuotesActivity;->z:I

    invoke-static {v0}, Lcom/tebakgambar/model/Level;->fromId(I)Lcom/tebakgambar/model/Level;

    move-result-object v0

    return-object v0
.end method

.method private synthetic u0(Lt1/h;)Lt1/h;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/Level;

    .line 2
    invoke-virtual {p1}, Lcom/tebakgambar/model/Level;->hasSelfieLevel()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->s:Lcom/tebakgambar/component/CustomTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->t:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/tebakgambar/QuotesActivity;->s:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->s:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/CustomTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->t:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/CustomTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :cond_31
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->u:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1}, Lcom/tebakgambar/model/Level;->endLevelQuote()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic v0(Landroid/view/View;)V
    .registers 4

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/tebakgambar/AdsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->r:Lcom/tebakgambar/model/ResultEvents;

    const-string v1, "event_data"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic w0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->P:Ly8/w;

    iget-object v1, p0, Lcom/tebakgambar/QuotesActivity;->O:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ly8/w;->A(Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic x0(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/QuotesActivity;->l0()V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->L:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic y0(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/QuotesActivity;->E0()V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->L:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic z0(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/QuotesActivity;->C0()V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->L:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;ILandroid/net/Uri;)V
    .registers 10

    .line 1
    new-instance p1, Lj8/c0;

    const p2, 0x7f1200ad

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const p2, 0x7f0701ea

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v2, 0x7f1300ec

    const/4 v3, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/Integer;)V

    .line 2
    invoke-virtual {p1}, Lj8/c0;->show()V

    .line 3
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 4
    new-instance p3, Lg8/i;

    invoke-direct {p3, p1}, Lg8/i;-><init>(Lj8/c0;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/e;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x22b

    if-ne p1, p2, :cond_1d

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/tebakgambar/AdsActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget p2, p0, Lcom/tebakgambar/QuotesActivity;->z:I

    const-string p3, "level"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1d
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->s:Lcom/tebakgambar/component/CustomTextView;

    if-eq p1, v0, :cond_23

    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->t:Lcom/tebakgambar/component/CustomTextView;

    if-ne p1, v0, :cond_9

    goto :goto_23

    .line 2
    :cond_9
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/tebakgambar/AdsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v0, p0, Lcom/tebakgambar/QuotesActivity;->z:I

    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_37

    .line 4
    :cond_23
    :goto_23
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v0, p0, Lcom/tebakgambar/QuotesActivity;->z:I

    const-string v1, "frameLevel"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x22b

    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_37
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0026

    .line 2
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/tebakgambar/QuotesActivity;->j0()V

    .line 4
    new-instance p1, Ly8/w;

    invoke-direct {p1, p0}, Ly8/w;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity;->P:Ly8/w;

    .line 5
    invoke-virtual {p1, p0}, Ly8/w;->u(Ly8/w$g;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 7
    invoke-direct {p0}, Lcom/tebakgambar/QuotesActivity;->k0()V

    const-string v0, "event_clue"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/ResultEventClue;

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->M:Lcom/tebakgambar/model/ResultEventClue;

    const-string v0, "level"

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tebakgambar/QuotesActivity;->z:I

    const-string v0, "event_data"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/ResultEvents;

    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity;->r:Lcom/tebakgambar/model/ResultEvents;

    .line 11
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->M:Lcom/tebakgambar/model/ResultEventClue;

    if-eqz v0, :cond_4b

    .line 12
    iget-object p1, v0, Lcom/tebakgambar/model/BaseEvent;->ads_banner:Ljava/lang/String;

    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity;->p:Ljava/lang/String;

    .line 13
    iget-object p1, v0, Lcom/tebakgambar/model/BaseEvent;->ads_url:Ljava/lang/String;

    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity;->q:Ljava/lang/String;

    .line 14
    iget-object p1, v0, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity;->o:Ljava/lang/String;

    goto :goto_59

    :cond_4b
    if-eqz p1, :cond_59

    .line 15
    iget-object v0, p1, Lcom/tebakgambar/model/BaseEvent;->ads_banner:Ljava/lang/String;

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->p:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/tebakgambar/model/BaseEvent;->ads_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->q:Ljava/lang/String;

    .line 17
    iget-object p1, p1, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity;->o:Ljava/lang/String;

    :cond_59
    :goto_59
    const p1, 0x7f0a02d9

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/component/CustomTextView;

    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity;->u:Lcom/tebakgambar/component/CustomTextView;

    const p1, 0x7f0a007d

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/component/CustomButton;

    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity;->x:Lcom/tebakgambar/component/CustomButton;

    const p1, 0x7f0a008b

    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/component/CustomButton;

    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity;->y:Lcom/tebakgambar/component/CustomButton;

    const p1, 0x7f0a008d

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/component/CustomButton;

    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity;->G:Lcom/tebakgambar/component/CustomButton;

    const p1, 0x7f0a0156

    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity;->H:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f0a013b

    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/component/CustomImageView;

    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity;->E:Lcom/tebakgambar/component/CustomImageView;

    const p1, 0x7f0a0120

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->F:Landroid/view/View;

    const v0, 0x7f0a0227

    .line 25
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a0190

    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->B:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a0118

    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->A:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a02d3

    .line 28
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->s:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02d4

    .line 29
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->t:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a0246

    .line 30
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a0090

    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->v:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a0305

    .line 32
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->w:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a0192

    .line 33
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->J:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0172

    .line 34
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->I:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f0a00c8

    .line 35
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/tebakgambar/QuotesActivity;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 36
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->M:Lcom/tebakgambar/model/ResultEventClue;

    const v2, 0x7f1201ac

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eqz v0, :cond_15a

    .line 37
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->s:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->t:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->x:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 40
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->u:Lcom/tebakgambar/component/CustomTextView;

    iget-object v2, p0, Lcom/tebakgambar/QuotesActivity;->M:Lcom/tebakgambar/model/ResultEventClue;

    iget-object v2, v2, Lcom/tebakgambar/model/BaseEvent;->message_event_end:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->y:Lcom/tebakgambar/component/CustomButton;

    new-instance v2, Lg8/o;

    invoke-direct {v2, p0}, Lg8/o;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    invoke-virtual {v0, v2}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    new-instance v0, Lg8/r;

    invoke-direct {v0, p0}, Lg8/r;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    .line 43
    iget-object v2, p0, Lcom/tebakgambar/QuotesActivity;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v2, p0, Lcom/tebakgambar/QuotesActivity;->B:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2af

    .line 45
    :cond_15a
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->r:Lcom/tebakgambar/model/ResultEvents;

    const-string v5, " "

    if-eqz v0, :cond_26d

    .line 46
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->s:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->t:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->r:Lcom/tebakgambar/model/ResultEvents;

    iget-object v0, v0, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Ly8/y;->P(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    .line 49
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->x:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->y:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 51
    :cond_184
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->r:Lcom/tebakgambar/model/ResultEvents;

    iget-object v0, v0, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    const-string v7, "3"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_195

    .line 52
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->y:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    :cond_195
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->x:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 54
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->r:Lcom/tebakgambar/model/ResultEvents;

    iget-object v0, v0, Lcom/tebakgambar/model/BaseEvent;->message_event_end:Ljava/lang/String;

    const-string v2, "<n"

    const-string v7, "\n"

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/tebakgambar/QuotesActivity;->r:Lcom/tebakgambar/model/ResultEvents;

    iget-object v2, v2, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    invoke-static {p0, v2}, Ly8/y;->P(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_220

    .line 56
    iget-object v2, p0, Lcom/tebakgambar/QuotesActivity;->u:Lcom/tebakgambar/component/CustomTextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->G:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->H:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->o:Ljava/lang/String;

    invoke-static {p0, v0}, Ly8/y;->y(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 61
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v5, "#,##0"

    invoke-direct {v2, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance v5, Ljava/text/DecimalFormatSymbols;

    sget-object v6, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-direct {v5, v6}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v2, v5}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 63
    invoke-virtual {v2, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v2, p0, Lcom/tebakgambar/QuotesActivity;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 65
    iget-object v2, p0, Lcom/tebakgambar/QuotesActivity;->I:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v2, p0, Lcom/tebakgambar/QuotesActivity;->w:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v2, p0, Lcom/tebakgambar/QuotesActivity;->v:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120103

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lg8/t;

    invoke-direct {v2, p0}, Lg8/t;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_24e

    .line 69
    :cond_220
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->G:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v0

    iget-object v2, p0, Lcom/tebakgambar/QuotesActivity;->r:Lcom/tebakgambar/model/ResultEvents;

    iget-object v2, v2, Lcom/tebakgambar/model/BaseEvent;->welcome_image_url:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v2}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v3}, Lv1/c;->U(Z)Lv1/c;

    move-result-object v0

    sget-object v2, Lb2/b;->r:Lb2/b;

    .line 74
    invoke-virtual {v0, v2}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object v0

    new-instance v2, Lcom/tebakgambar/QuotesActivity$a;

    invoke-direct {v2, p0}, Lcom/tebakgambar/QuotesActivity$a;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    .line 75
    invoke-virtual {v0, v2}, Lv1/c;->N(Lt2/f;)Lv1/c;

    move-result-object v0

    iget-object v2, p0, Lcom/tebakgambar/QuotesActivity;->H:Landroidx/appcompat/widget/AppCompatImageView;

    .line 76
    invoke-virtual {v0, v2}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    .line 77
    :goto_24e
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->y:Lcom/tebakgambar/component/CustomButton;

    new-instance v2, Lg8/q;

    invoke-direct {v2, p0}, Lg8/q;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    invoke-virtual {v0, v2}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v0, Lg8/s;

    invoke-direct {v0, p0}, Lg8/s;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    .line 79
    iget-object v2, p0, Lcom/tebakgambar/QuotesActivity;->J:Landroid/widget/LinearLayout;

    new-instance v5, Lg8/b;

    invoke-direct {v5, p0}, Lg8/b;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v2, p0, Lcom/tebakgambar/QuotesActivity;->G:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v2, v0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2af

    .line 81
    :cond_26d
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->y:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->x:Lcom/tebakgambar/component/CustomButton;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/tebakgambar/QuotesActivity;->z:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->append(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v0, Lg8/j;

    invoke-direct {v0, p0}, Lg8/j;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    move-result-object v0

    new-instance v2, Lg8/k;

    invoke-direct {v2, p0}, Lg8/k;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    sget-object v5, Lt1/h;->k:Ljava/util/concurrent/Executor;

    .line 84
    invoke-virtual {v0, v2, v5}, Lt1/h;->A(Lt1/f;Ljava/util/concurrent/Executor;)Lt1/h;

    .line 85
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->B:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v0, Lg8/a;

    invoke-direct {v0, p0}, Lg8/a;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    .line 88
    iget-object v2, p0, Lcom/tebakgambar/QuotesActivity;->G:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v2, v0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :goto_2af
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f3

    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f3

    .line 90
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->F:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->E:Lcom/tebakgambar/component/CustomImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->p:Ljava/lang/String;

    .line 93
    invoke-virtual {p1, v0}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object p1

    .line 94
    invoke-virtual {p1, v3}, Lv1/c;->U(Z)Lv1/c;

    move-result-object p1

    sget-object v0, Lb2/b;->r:Lb2/b;

    .line 95
    invoke-virtual {p1, v0}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object p1

    const v0, 0x7f080058

    .line 96
    invoke-virtual {p1, v0}, Lv1/c;->Q(I)Lv1/c;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/QuotesActivity$b;

    invoke-direct {v0, p0}, Lcom/tebakgambar/QuotesActivity$b;-><init>(Lcom/tebakgambar/QuotesActivity;)V

    .line 97
    invoke-virtual {p1, v0}, Lv1/c;->N(Lt2/f;)Lv1/c;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity;->E:Lcom/tebakgambar/component/CustomImageView;

    .line 98
    invoke-virtual {p1, v0}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    goto :goto_307

    .line 99
    :cond_2f3
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/n;->m()Landroidx/fragment/app/w;

    move-result-object v0

    const-string v1, "ca-app-pub-7269282889157841/4050539731"

    .line 100
    invoke-static {v1}, Lj8/k0;->N(Ljava/lang/String;)Lj8/k0;

    move-result-object v1

    .line 101
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/w;->m(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 102
    invoke-virtual {v0}, Landroidx/fragment/app/w;->f()I

    :goto_307
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/e;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x37

    if-ne p1, p2, :cond_17

    .line 2
    invoke-static {p3}, Ly8/o;->b([I)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity;->N:Ljava/lang/Runnable;

    if-eqz p1, :cond_14

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_14
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity;->N:Ljava/lang/Runnable;

    :cond_17
    return-void
.end method

.method public y(ILandroid/net/Uri;)V
    .registers 9

    .line 1
    new-instance p1, Lj8/c0;

    const p2, 0x7f1201bf

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const p2, 0x7f0701ea

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v2, 0x7f1300ec

    const/4 v3, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/Integer;)V

    .line 2
    invoke-virtual {p1}, Lj8/c0;->show()V

    .line 3
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 4
    new-instance v0, Lg8/i;

    invoke-direct {v0, p1}, Lg8/i;-><init>(Lj8/c0;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class com.tebakgambar.QuotesActivity.a (com.tebakgambar.QuotesActivity$a)
.class Lcom/tebakgambar/QuotesActivity$a;
.super Ljava/lang/Object;
.source "QuotesActivity.java"

# interfaces
.implements Lt2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/QuotesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt2/f<",
        "Ljava/lang/String;",
        "Ll2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity$a;->a:Lcom/tebakgambar/QuotesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z
    .registers 6

    .line 1
    check-cast p1, Ll2/b;

    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/tebakgambar/QuotesActivity$a;->d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z
    .registers 5

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tebakgambar/QuotesActivity$a;->c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Ll2/b;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity$a;->a:Lcom/tebakgambar/QuotesActivity;

    invoke-static {p1}, Lcom/tebakgambar/QuotesActivity;->V(Lcom/tebakgambar/QuotesActivity;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return p2
.end method

.method public d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/b;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Ll2/b;",
            ">;ZZ)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

###### Class com.tebakgambar.QuotesActivity.b (com.tebakgambar.QuotesActivity$b)
.class Lcom/tebakgambar/QuotesActivity$b;
.super Ljava/lang/Object;
.source "QuotesActivity.java"

# interfaces
.implements Lt2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/QuotesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt2/f<",
        "Ljava/lang/String;",
        "Ll2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity$b;->a:Lcom/tebakgambar/QuotesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/tebakgambar/QuotesActivity$b;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/QuotesActivity$b;->d(Landroid/view/View;)V

    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .registers 3

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$b;->a:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->Z(Lcom/tebakgambar/QuotesActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$b;->a:Lcom/tebakgambar/QuotesActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z
    .registers 6

    .line 1
    check-cast p1, Ll2/b;

    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/tebakgambar/QuotesActivity$b;->f(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z
    .registers 5

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tebakgambar/QuotesActivity$b;->e(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Ll2/b;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity$b;->a:Lcom/tebakgambar/QuotesActivity;

    invoke-static {p1}, Lcom/tebakgambar/QuotesActivity;->W(Lcom/tebakgambar/QuotesActivity;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity$b;->a:Lcom/tebakgambar/QuotesActivity;

    invoke-static {p1}, Lcom/tebakgambar/QuotesActivity;->Y(Lcom/tebakgambar/QuotesActivity;)Lcom/tebakgambar/component/CustomImageView;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    return p2
.end method

.method public f(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/b;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Ll2/b;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity$b;->a:Lcom/tebakgambar/QuotesActivity;

    invoke-static {p1}, Lcom/tebakgambar/QuotesActivity;->Y(Lcom/tebakgambar/QuotesActivity;)Lcom/tebakgambar/component/CustomImageView;

    move-result-object p1

    new-instance p2, Lcom/tebakgambar/a;

    invoke-direct {p2, p0}, Lcom/tebakgambar/a;-><init>(Lcom/tebakgambar/QuotesActivity$b;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    return p1
.end method

###### Class com.tebakgambar.a (com.tebakgambar.a)
.class public final synthetic Lcom/tebakgambar/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity$b;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/a;->o:Lcom/tebakgambar/QuotesActivity$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/a;->o:Lcom/tebakgambar/QuotesActivity$b;

    invoke-static {v0, p1}, Lcom/tebakgambar/QuotesActivity$b;->c(Lcom/tebakgambar/QuotesActivity$b;Landroid/view/View;)V

    return-void
.end method

###### Class com.tebakgambar.QuotesActivity.c (com.tebakgambar.QuotesActivity$c)
.class Lcom/tebakgambar/QuotesActivity$c;
.super Landroidx/activity/g;
.source "QuotesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/QuotesActivity;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/QuotesActivity;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    invoke-direct {p0, p2}, Landroidx/activity/g;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->a0(Lcom/tebakgambar/QuotesActivity;)Lcom/tebakgambar/model/ResultEvents;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->a0(Lcom/tebakgambar/QuotesActivity;)Lcom/tebakgambar/model/ResultEvents;

    move-result-object v1

    iget-object v1, v1, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Ly8/y;->P(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->b0(Lcom/tebakgambar/QuotesActivity;)V

    goto/16 :goto_c3

    .line 4
    :cond_23
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->Z(Lcom/tebakgambar/QuotesActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->c0(Lcom/tebakgambar/QuotesActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tebakgambar/AdsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "event_data"

    iget-object v3, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    .line 6
    invoke-static {v3}, Lcom/tebakgambar/QuotesActivity;->a0(Lcom/tebakgambar/QuotesActivity;)Lcom/tebakgambar/model/ResultEvents;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c3

    .line 8
    :cond_5a
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->b0(Lcom/tebakgambar/QuotesActivity;)V

    goto :goto_c3

    .line 9
    :cond_60
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->e0(Lcom/tebakgambar/QuotesActivity;)Lcom/tebakgambar/model/ResultEventClue;

    move-result-object v0

    if-eqz v0, :cond_a5

    .line 10
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->Z(Lcom/tebakgambar/QuotesActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->c0(Lcom/tebakgambar/QuotesActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 11
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tebakgambar/AdsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "event_clue"

    iget-object v3, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    .line 12
    invoke-static {v3}, Lcom/tebakgambar/QuotesActivity;->e0(Lcom/tebakgambar/QuotesActivity;)Lcom/tebakgambar/model/ResultEventClue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c3

    .line 14
    :cond_9f
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->b0(Lcom/tebakgambar/QuotesActivity;)V

    goto :goto_c3

    .line 15
    :cond_a5
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tebakgambar/AdsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "level"

    iget-object v3, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v3}, Lcom/tebakgambar/QuotesActivity;->f0(Lcom/tebakgambar/QuotesActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c3} :catch_c3

    .line 16
    :catch_c3
    :goto_c3
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$c;->d:Lcom/tebakgambar/QuotesActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

###### Class com.tebakgambar.QuotesActivity.d (com.tebakgambar.QuotesActivity$d)
.class Lcom/tebakgambar/QuotesActivity$d;
.super Ljava/lang/Object;
.source "QuotesActivity.java"

# interfaces
.implements Ly8/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/QuotesActivity;->h0(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/QuotesActivity;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/QuotesActivity$d;->b:Lcom/tebakgambar/QuotesActivity;

    iput-object p2, p0, Lcom/tebakgambar/QuotesActivity$d;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$d;->b:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->g0(Lcom/tebakgambar/QuotesActivity;)Lj8/k0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lj8/k0;->V(Z)V

    return-void
.end method

.method public b(Landroid/net/Uri;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$d;->b:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->g0(Lcom/tebakgambar/QuotesActivity;)Lj8/k0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj8/k0;->V(Z)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/QuotesActivity$d;->b:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/QuotesActivity;->X(Lcom/tebakgambar/QuotesActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/QuotesActivity$d;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_16

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_16
    return-void
.end method

###### Class g8.a (g8.a)
.class public final synthetic Lg8/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/a;->o:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lg8/a;->o:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/QuotesActivity;->D(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V

    return-void
.end method

###### Class g8.b (g8.b)
.class public final synthetic Lg8/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/b;->o:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lg8/b;->o:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/QuotesActivity;->R(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V

    return-void
.end method

###### Class g8.c (g8.c)
.class public final synthetic Lg8/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/c;->o:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lg8/c;->o:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->C(Lcom/tebakgambar/QuotesActivity;)V

    return-void
.end method

###### Class g8.d (g8.d)
.class public final synthetic Lg8/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/d;->o:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lg8/d;->o:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->E(Lcom/tebakgambar/QuotesActivity;)V

    return-void
.end method

###### Class g8.e (g8.e)
.class public final synthetic Lg8/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/e;->o:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lg8/e;->o:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->G(Lcom/tebakgambar/QuotesActivity;)V

    return-void
.end method

###### Class g8.f (g8.f)
.class public final synthetic Lg8/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/f;->o:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lg8/f;->o:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->N(Lcom/tebakgambar/QuotesActivity;)V

    return-void
.end method

###### Class g8.g (g8.g)
.class public final synthetic Lg8/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/g;->o:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lg8/g;->o:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->S(Lcom/tebakgambar/QuotesActivity;)V

    return-void
.end method

###### Class g8.h (g8.h)
.class public final synthetic Lg8/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/h;->o:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lg8/h;->o:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->T(Lcom/tebakgambar/QuotesActivity;)V

    return-void
.end method

###### Class g8.j (g8.j)
.class public final synthetic Lg8/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/j;->a:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lg8/j;->a:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0}, Lcom/tebakgambar/QuotesActivity;->O(Lcom/tebakgambar/QuotesActivity;)Lcom/tebakgambar/model/Level;

    move-result-object v0

    return-object v0
.end method

###### Class g8.k (g8.k)
.class public final synthetic Lg8/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/k;->a:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lg8/k;->a:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/QuotesActivity;->U(Lcom/tebakgambar/QuotesActivity;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

###### Class g8.l (g8.l)
.class public final synthetic Lg8/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/l;->o:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lg8/l;->o:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/QuotesActivity;->F(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V

    return-void
.end method

###### Class g8.m (g8.m)
.class public final synthetic Lg8/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/m;->o:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lg8/m;->o:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/QuotesActivity;->H(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V

    return-void
.end method

###### Class g8.n (g8.n)
.class public final synthetic Lg8/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/n;->o:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lg8/n;->o:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/QuotesActivity;->I(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V

    return-void
.end method

###### Class g8.o (g8.o)
.class public final synthetic Lg8/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/o;->o:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lg8/o;->o:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/QuotesActivity;->J(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V

    return-void
.end method

###### Class g8.p (g8.p)
.class public final synthetic Lg8/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/p;->o:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lg8/p;->o:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/QuotesActivity;->K(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V

    return-void
.end method

###### Class g8.q (g8.q)
.class public final synthetic Lg8/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/q;->o:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lg8/q;->o:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/QuotesActivity;->L(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V

    return-void
.end method

###### Class g8.r (g8.r)
.class public final synthetic Lg8/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/r;->o:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lg8/r;->o:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/QuotesActivity;->M(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V

    return-void
.end method

###### Class g8.s (g8.s)
.class public final synthetic Lg8/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/s;->o:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lg8/s;->o:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/QuotesActivity;->P(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V

    return-void
.end method

###### Class g8.t (g8.t)
.class public final synthetic Lg8/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/QuotesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/QuotesActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/t;->o:Lcom/tebakgambar/QuotesActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lg8/t;->o:Lcom/tebakgambar/QuotesActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/QuotesActivity;->Q(Lcom/tebakgambar/QuotesActivity;Landroid/view/View;)V

    return-void
.end method
