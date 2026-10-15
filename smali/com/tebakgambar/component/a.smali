###### Class com.tebakgambar.component.a (com.tebakgambar.component.a)
.class public Lcom/tebakgambar/component/a;
.super Landroid/app/Dialog;
.source "IncreaseLifeDialog.java"

# interfaces
.implements Lcom/tebakgambar/component/b$c;


# instance fields
.field private o:Lo8/i0;

.field private p:Lm8/a;

.field private final q:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const v0, 0x7f1300ec

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/tebakgambar/component/a;->q:Landroid/app/Activity;

    .line 3
    invoke-direct {p0}, Lcom/tebakgambar/component/a;->h()V

    .line 4
    invoke-direct {p0}, Lcom/tebakgambar/component/a;->g()V

    return-void
.end method

.method public static synthetic a(Lcom/tebakgambar/component/a;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/component/a;->j(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/tebakgambar/component/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/component/a;->k()V

    return-void
.end method

.method public static synthetic c(Lcom/tebakgambar/component/a;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/component/a;->i(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lcom/tebakgambar/component/a;)Lm8/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/component/a;->p:Lm8/a;

    return-object p0
.end method

.method static synthetic f(Lcom/tebakgambar/component/a;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/component/a;->p()V

    return-void
.end method

.method private g()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/component/a;->m()V

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/component/a;->l()V

    return-void
.end method

.method private h()V
    .registers 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0055

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/databinding/g;->h(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lo8/i0;

    iput-object v0, p0, Lcom/tebakgambar/component/a;->o:Lo8/i0;

    .line 3
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/component/a;->p:Lm8/a;

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/component/a;->o:Lo8/i0;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 5
    invoke-direct {p0}, Lcom/tebakgambar/component/a;->n()V

    return-void
.end method

.method private synthetic i(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/component/a;->o()V

    return-void
.end method

.method private synthetic j(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/tebakgambar/component/a;->dismiss()V

    return-void
.end method

.method private synthetic k()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/tebakgambar/component/a;->dismiss()V

    return-void
.end method

.method private l()V
    .registers 3

    .line 1
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/component/a$a;

    invoke-direct {v1, p0}, Lcom/tebakgambar/component/a$a;-><init>(Lcom/tebakgambar/component/a;)V

    invoke-virtual {v0, v1}, Lj8/b;->t(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

.method private m()V
    .registers 3

    .line 1
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/component/a$b;

    invoke-direct {v1, p0}, Lcom/tebakgambar/component/a$b;-><init>(Lcom/tebakgambar/component/a;)V

    invoke-virtual {v0, v1}, Lj8/b;->v(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

.method private n()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120039

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12003a

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f060049

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v0, 0x0

    const/16 v4, 0x22

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/component/a;->o:Lo8/i0;

    iget-object v0, v0, Lo8/i0;->P:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/component/a;->o:Lo8/i0;

    iget-object v0, v0, Lo8/i0;->P:Lcom/tebakgambar/component/CustomButton;

    new-instance v1, Lj8/p0;

    invoke-direct {v1, p0}, Lj8/p0;-><init>(Lcom/tebakgambar/component/a;)V

    invoke-virtual {v0, v1}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/component/a;->o:Lo8/i0;

    iget-object v0, v0, Lo8/i0;->O:Lcom/tebakgambar/component/CustomButton;

    new-instance v1, Lj8/o0;

    invoke-direct {v1, p0}, Lj8/o0;-><init>(Lcom/tebakgambar/component/a;)V

    invoke-virtual {v0, v1}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private o()V
    .registers 4

    .line 1
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->p()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/component/a;->q:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lj8/b;->A(Landroid/app/Activity;)V

    goto :goto_43

    .line 3
    :cond_14
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->m()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/component/a;->q:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lj8/b;->z(Landroid/app/Activity;)V

    goto :goto_43

    .line 5
    :cond_28
    iget-object v0, p0, Lcom/tebakgambar/component/a;->q:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tebakgambar/Henson$b;->f()Lcom/tebakgambar/component/OfflineAdActivity$$IntentBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tebakgambar/component/OfflineAdActivity$$IntentBuilder;->isFromIncreaseDialog(Z)Lcom/tebakgambar/component/OfflineAdActivity$$IntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tebakgambar/component/OfflineAdActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x2ee0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6
    invoke-virtual {p0}, Lcom/tebakgambar/component/a;->dismiss()V

    :goto_43
    return-void
.end method

.method private p()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/component/a;->o:Lo8/i0;

    iget-object v0, v0, Lo8/i0;->R:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/component/a;->o:Lo8/i0;

    iget-object v0, v0, Lo8/i0;->T:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/component/a;->o:Lo8/i0;

    iget-object v0, v0, Lo8/i0;->S:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 5
    new-instance v1, Lj8/q0;

    invoke-direct {v1, p0}, Lj8/q0;-><init>(Lcom/tebakgambar/component/a;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 1
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->i()V

    .line 2
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->j()V

    .line 3
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public e(J)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/component/a;->p:Lm8/a;

    invoke-virtual {v0}, Lm8/a;->g()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/component/a;->p:Lm8/a;

    invoke-virtual {v1}, Lm8/a;->j()J

    move-result-wide v1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3e

    .line 3
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "00"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sub-long/2addr v1, p1

    const-wide/16 p1, 0x3e8

    .line 4
    div-long/2addr v1, p1

    const-wide/16 p1, 0x3c

    .line 5
    div-long v3, v1, p1

    .line 6
    rem-long/2addr v1, p1

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/component/a;->o:Lo8/i0;

    iget-object p1, p1, Lo8/i0;->V:Lcom/tebakgambar/component/CustomTextView;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v5

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    const-string v0, "%s:%s "

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4d

    .line 8
    :cond_3e
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4d

    .line 10
    invoke-virtual {p0}, Lcom/tebakgambar/component/a;->dismiss()V

    :cond_4d
    :goto_4d
    return-void
.end method

.method protected onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2
    invoke-static {}, Lcom/tebakgambar/component/b;->f()Lcom/tebakgambar/component/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/b;->e(Lcom/tebakgambar/component/b$c;)V

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2
    invoke-static {}, Lcom/tebakgambar/component/b;->f()Lcom/tebakgambar/component/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/b;->g(Lcom/tebakgambar/component/b$c;)V

    return-void
.end method

###### Class com.tebakgambar.component.a.C0129a (com.tebakgambar.component.a$a)
.class Lcom/tebakgambar/component/a$a;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "IncreaseLifeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/component/a;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/component/a;


# direct methods
.method constructor <init>(Lcom/tebakgambar/component/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/component/a$a;->a:Lcom/tebakgambar/component/a;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->b()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/component/a$a;->a:Lcom/tebakgambar/component/a;

    invoke-static {v0}, Lcom/tebakgambar/component/a;->d(Lcom/tebakgambar/component/a;)Lm8/a;

    move-result-object v0

    invoke-virtual {v0}, Lm8/a;->k()V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/component/a$a;->a:Lcom/tebakgambar/component/a;

    invoke-static {v0}, Lcom/tebakgambar/component/a;->f(Lcom/tebakgambar/component/a;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/AdError;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->c(Lcom/google/android/gms/ads/AdError;)V

    .line 2
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object p1

    invoke-virtual {p1}, Lj8/b;->g()V

    return-void
.end method

.method public e()V
    .registers 2

    .line 1
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->g()V

    return-void
.end method

###### Class com.tebakgambar.component.a.b (com.tebakgambar.component.a$b)
.class Lcom/tebakgambar/component/a$b;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "IncreaseLifeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/component/a;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/component/a;


# direct methods
.method constructor <init>(Lcom/tebakgambar/component/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/component/a$b;->a:Lcom/tebakgambar/component/a;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->b()V

    .line 2
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->q()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/component/a$b;->a:Lcom/tebakgambar/component/a;

    invoke-static {v0}, Lcom/tebakgambar/component/a;->d(Lcom/tebakgambar/component/a;)Lm8/a;

    move-result-object v0

    invoke-virtual {v0}, Lm8/a;->k()V

    .line 4
    :cond_16
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj8/b;->x(Z)V

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/component/a$b;->a:Lcom/tebakgambar/component/a;

    invoke-static {v0}, Lcom/tebakgambar/component/a;->f(Lcom/tebakgambar/component/a;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/AdError;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->c(Lcom/google/android/gms/ads/AdError;)V

    .line 2
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object p1

    invoke-virtual {p1}, Lj8/b;->h()V

    return-void
.end method

.method public e()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->e()V

    .line 2
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->h()V

    return-void
.end method

###### Class j8.o0 (j8.o0)
.class public final synthetic Lj8/o0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/component/a;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/component/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/o0;->o:Lcom/tebakgambar/component/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lj8/o0;->o:Lcom/tebakgambar/component/a;

    invoke-static {v0, p1}, Lcom/tebakgambar/component/a;->a(Lcom/tebakgambar/component/a;Landroid/view/View;)V

    return-void
.end method

###### Class j8.p0 (j8.p0)
.class public final synthetic Lj8/p0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/component/a;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/component/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/p0;->o:Lcom/tebakgambar/component/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lj8/p0;->o:Lcom/tebakgambar/component/a;

    invoke-static {v0, p1}, Lcom/tebakgambar/component/a;->c(Lcom/tebakgambar/component/a;Landroid/view/View;)V

    return-void
.end method

###### Class j8.q0 (j8.q0)
.class public final synthetic Lj8/q0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/component/a;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/component/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/q0;->o:Lcom/tebakgambar/component/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lj8/q0;->o:Lcom/tebakgambar/component/a;

    invoke-static {v0}, Lcom/tebakgambar/component/a;->b(Lcom/tebakgambar/component/a;)V

    return-void
.end method
