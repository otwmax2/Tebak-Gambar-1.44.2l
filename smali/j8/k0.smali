###### Class j8.k0 (j8.k0)
.class public Lj8/k0;
.super Landroidx/fragment/app/Fragment;
.source "FragmentCustomAds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj8/k0$e;,
        Lj8/k0$d;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/Button;

.field private C:Z

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:I

.field private G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/model/Ads;",
            ">;"
        }
    .end annotation
.end field

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field private o:Lj8/k0$d;

.field private p:Ljava/util/Timer;

.field private q:Landroid/os/Handler;

.field private r:Ljava/lang/Runnable;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/FrameLayout;

.field private x:Landroid/widget/FrameLayout;

.field private y:Lcom/google/android/gms/ads/AdView;

.field private z:Lcom/google/android/gms/ads/nativead/NativeAdView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "ca-app-pub-7269282889157841/2259635716"

    .line 2
    iput-object v0, p0, Lj8/k0;->E:Ljava/lang/String;

    const/16 v0, 0x8

    .line 3
    iput v0, p0, Lj8/k0;->F:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lj8/k0;->I:Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lj8/k0;)Landroid/widget/FrameLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lj8/k0;->w:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic B(Lj8/k0;)Lcom/google/android/gms/ads/nativead/NativeAdView;
    .registers 1

    .line 1
    iget-object p0, p0, Lj8/k0;->z:Lcom/google/android/gms/ads/nativead/NativeAdView;

    return-object p0
.end method

.method static synthetic C(Lj8/k0;)Lcom/google/android/gms/ads/AdView;
    .registers 1

    .line 1
    iget-object p0, p0, Lj8/k0;->y:Lcom/google/android/gms/ads/AdView;

    return-object p0
.end method

.method static synthetic D(Lj8/k0;)I
    .registers 1

    .line 1
    iget p0, p0, Lj8/k0;->F:I

    return p0
.end method

.method private E()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-static {v0}, Ly8/y;->q(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 3
    invoke-direct {p0}, Lj8/k0;->O()V

    :cond_15
    return-void
.end method

.method private F()V
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/k0;->y:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lj8/k0;->y:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->a()V

    .line 4
    :cond_c
    iget-object v0, p0, Lj8/k0;->z:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->removeAllViews()V

    .line 5
    iget-object v0, p0, Lj8/k0;->z:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->a()V

    return-void
.end method

.method private G()Lcom/google/android/gms/ads/AdSize;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    .line 5
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/AdSize;->a(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method private H(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/model/Ads;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_11
    iget v4, p0, Lj8/k0;->F:I

    if-ge v3, v4, :cond_4b

    .line 4
    new-instance v4, Lcom/tebakgambar/model/Ads;

    invoke-direct {v4}, Lcom/tebakgambar/model/Ads;-><init>()V

    .line 5
    iput v3, v4, Lcom/tebakgambar/model/Ads;->adsId:I

    .line 6
    aget-object v5, v0, v3

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    iput-object v5, v4, Lcom/tebakgambar/model/Ads;->url:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget-object v7, v0, v3

    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/tebakgambar/model/Ads;->imageId:Ljava/lang/Integer;

    .line 8
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 9
    :cond_4b
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    return-object v1
.end method

.method private synthetic I(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lj8/k0;->z:Lcom/google/android/gms/ads/nativead/NativeAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lj8/k0;->A:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lj8/k0;->B:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lj8/k0;->z:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

.method private synthetic J(Ljava/lang/String;Lt2/f;Landroid/view/View$OnClickListener;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lj8/k0;->v:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv1/g;->v(Landroid/content/Context;)Lv1/j;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object p1

    const v0, 0x7f080057

    .line 4
    invoke-virtual {p1, v0}, Lv1/c;->Q(I)Lv1/c;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Lv1/c;->J(I)Lv1/c;

    move-result-object p1

    new-instance v0, Lj8/k0$c;

    invoke-direct {v0, p0, p2}, Lj8/k0$c;-><init>(Lj8/k0;Lt2/f;)V

    .line 6
    invoke-virtual {p1, v0}, Lv1/c;->N(Lt2/f;)Lv1/c;

    move-result-object p1

    sget-object p2, Lb2/b;->r:Lb2/b;

    .line 7
    invoke-virtual {p1, p2}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object p1

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Lv1/c;->U(Z)Lv1/c;

    move-result-object p1

    iget-object p2, p0, Lj8/k0;->v:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p1, p2}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    .line 10
    iget-object p1, p0, Lj8/k0;->v:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private K()V
    .registers 5

    .line 1
    iget-object v0, p0, Lj8/k0;->r:Ljava/lang/Runnable;

    if-nez v0, :cond_8

    .line 2
    invoke-direct {p0}, Lj8/k0;->M()V

    goto :goto_f

    .line 3
    :cond_8
    iget-object v1, p0, Lj8/k0;->q:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_f
    return-void
.end method

.method private L()V
    .registers 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lj8/k0;->D:Z

    .line 2
    iget-object v1, p0, Lj8/k0;->y:Lcom/google/android/gms/ads/AdView;

    if-nez v1, :cond_80

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_80

    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance v2, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lj8/k0;->y:Lcom/google/android/gms/ads/AdView;

    const-string v1, "ca-app-pub-7269282889157841/3950288814"

    .line 5
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lj8/k0;->x:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lj8/k0;->y:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 7
    iget-object v1, p0, Lj8/k0;->y:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Lj8/k0$b;

    invoke-direct {v2, p0}, Lj8/k0$b;-><init>(Lj8/k0;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 8
    :try_start_3d
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->c()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 9
    invoke-direct {p0}, Lj8/k0;->G()Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lj8/k0;->y:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 11
    iget-object v2, p0, Lj8/k0;->y:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/BaseAdView;->b(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_54} :catch_55

    goto :goto_80

    :catch_55
    move-exception v1

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Show:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lj8/k0;->E:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", but got error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_80
    :goto_80
    return-void
.end method

.method private M()V
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lj8/k0;->D:Z

    .line 2
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v1

    const-string v2, "ca-app-pub-7269282889157841/2259635716"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lj8/i0;

    invoke-direct {v1, p0}, Lj8/i0;-><init>(Lj8/k0;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->c(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lj8/k0$a;

    invoke-direct {v1, p0}, Lj8/k0$a;-><init>(Lj8/k0;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->e(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;-><init>()V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->a()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->g(Lcom/google/android/gms/ads/nativead/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->a()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    .line 7
    invoke-static {}, Lj8/b;->k()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->b(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public static N(Ljava/lang/String;)Lj8/k0;
    .registers 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "unitId"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lj8/k0;

    invoke-direct {p0}, Lj8/k0;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private O()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lj8/k0;->C:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lj8/k0;->D:Z

    if-nez v0, :cond_b

    .line 2
    invoke-direct {p0}, Lj8/k0;->K()V

    :cond_b
    return-void
.end method

.method private P()V
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/k0;->y:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->c()V

    :cond_7
    return-void
.end method

.method private Q()V
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/k0;->p:Ljava/util/Timer;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lj8/k0;->p:Ljava/util/Timer;

    :cond_a
    return-void
.end method

.method private S()V
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/k0;->y:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->d()V

    :cond_7
    return-void
.end method

.method private T()V
    .registers 8

    .line 1
    iget-object v0, p0, Lj8/k0;->p:Ljava/util/Timer;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    :cond_7
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lj8/k0;->p:Ljava/util/Timer;

    .line 4
    new-instance v2, Lj8/k0$e;

    invoke-direct {v2, p0}, Lj8/k0$e;-><init>(Lj8/k0;)V

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x1f40

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public static synthetic o(Lj8/k0;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/k0;->I(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

.method public static synthetic p(Lj8/k0;Ljava/lang/String;Lt2/f;Landroid/view/View$OnClickListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lj8/k0;->J(Ljava/lang/String;Lt2/f;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic q(Lj8/k0;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lj8/k0;->q:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic r(Lj8/k0;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lj8/k0;->O()V

    return-void
.end method

.method static synthetic s(Lj8/k0;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lj8/k0;->s:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic t(Lj8/k0;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lj8/k0;->t:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic u(Lj8/k0;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lj8/k0;->G:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic v(Lj8/k0;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lj8/k0;->v:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic w(Lj8/k0;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lj8/k0;->L()V

    return-void
.end method

.method static synthetic x(Lj8/k0;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lj8/k0;->C:Z

    return p1
.end method

.method static synthetic y(Lj8/k0;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lj8/k0;->D:Z

    return p1
.end method

.method static synthetic z(Lj8/k0;)Landroid/widget/FrameLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lj8/k0;->x:Landroid/widget/FrameLayout;

    return-object p0
.end method


# virtual methods
.method public R()V
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/k0;->v:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public U(Ljava/lang/String;Lt2/f;Landroid/view/View$OnClickListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lt2/f<",
            "Ljava/lang/String;",
            "Ll2/b;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lj8/j0;

    invoke-direct {v0, p0, p1, p2, p3}, Lj8/j0;-><init>(Lj8/k0;Ljava/lang/String;Lt2/f;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lj8/k0;->r:Ljava/lang/Runnable;

    return-void
.end method

.method public V(Z)V
    .registers 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    .line 1
    iget-object p1, p0, Lj8/k0;->u:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lj8/k0;->x:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lj8/k0;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_29

    .line 4
    :cond_15
    iget-boolean p1, p0, Lj8/k0;->C:Z

    if-eqz p1, :cond_1f

    .line 5
    iget-object p1, p0, Lj8/k0;->x:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_24

    .line 6
    :cond_1f
    iget-object p1, p0, Lj8/k0;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    :goto_24
    iget-object p1, p0, Lj8/k0;->u:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_29
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lj8/k0;->q:Landroid/os/Handler;

    .line 3
    new-instance p1, Lj8/k0$d;

    invoke-direct {p1, p0}, Lj8/k0$d;-><init>(Lj8/k0;)V

    iput-object p1, p0, Lj8/k0;->o:Lj8/k0$d;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lj8/k0;->H(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lj8/k0;->G:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "unitId"

    const-string v1, "ca-app-pub-7269282889157841/3950288814"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj8/k0;->E:Ljava/lang/String;

    .line 7
    :cond_2f
    invoke-direct {p0}, Lj8/k0;->K()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d004c

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a013c

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lj8/k0;->s:Landroid/widget/ImageView;

    const p2, 0x7f0a013d

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lj8/k0;->t:Landroid/widget/ImageView;

    const/16 p3, 0x8

    .line 4
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    const p2, 0x7f0a0228

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lj8/k0;->w:Landroid/widget/FrameLayout;

    const p2, 0x7f0a013e

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lj8/k0;->u:Landroid/widget/ImageView;

    const p2, 0x7f0a013f

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lj8/k0;->v:Landroid/widget/ImageView;

    const p2, 0x7f0a004b

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lj8/k0;->x:Landroid/widget/FrameLayout;

    const p2, 0x7f0a0316

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/ads/nativead/NativeAdView;

    iput-object p2, p0, Lj8/k0;->z:Lcom/google/android/gms/ads/nativead/NativeAdView;

    const p2, 0x7f0a02e7

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lj8/k0;->A:Landroid/widget/TextView;

    const p2, 0x7f0a009b

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lj8/k0;->B:Landroid/widget/Button;

    .line 12
    iget-object p2, p0, Lj8/k0;->z:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object p3, p0, Lj8/k0;->A:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    .line 13
    iget-object p2, p0, Lj8/k0;->z:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object p3, p0, Lj8/k0;->B:Landroid/widget/Button;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lj8/k0;->F()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    iget-object v1, p0, Lj8/k0;->o:Lj8/k0$d;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    :cond_f
    invoke-direct {p0}, Lj8/k0;->Q()V

    .line 4
    invoke-direct {p0}, Lj8/k0;->P()V

    .line 5
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    iget-object v1, p0, Lj8/k0;->o:Lj8/k0$d;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4
    :cond_19
    invoke-direct {p0}, Lj8/k0;->E()V

    .line 5
    invoke-direct {p0}, Lj8/k0;->T()V

    .line 6
    invoke-direct {p0}, Lj8/k0;->S()V

    return-void
.end method

###### Class j8.k0.a (j8.k0$a)
.class Lj8/k0$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "FragmentCustomAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/k0;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj8/k0;


# direct methods
.method constructor <init>(Lj8/k0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/k0$a;->a:Lj8/k0;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public m(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->m(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    iget-object p1, p0, Lj8/k0$a;->a:Lj8/k0;

    invoke-static {p1}, Lj8/k0;->w(Lj8/k0;)V

    return-void
.end method

.method public o()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->o()V

    .line 2
    iget-object v0, p0, Lj8/k0$a;->a:Lj8/k0;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lj8/k0;->x(Lj8/k0;Z)Z

    .line 3
    iget-object v0, p0, Lj8/k0$a;->a:Lj8/k0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj8/k0;->y(Lj8/k0;Z)Z

    .line 4
    iget-object v0, p0, Lj8/k0$a;->a:Lj8/k0;

    invoke-static {v0}, Lj8/k0;->z(Lj8/k0;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lj8/k0$a;->a:Lj8/k0;

    invoke-static {v0}, Lj8/k0;->A(Lj8/k0;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public w0()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->w0()V

    .line 2
    iget-object v0, p0, Lj8/k0$a;->a:Lj8/k0;

    iget-object v1, v0, Lj8/k0;->H:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 3
    iget-object v0, v0, Lj8/k0;->I:Ljava/lang/String;

    const-string v2, "clickAds"

    const-string v3, "click on ads"

    invoke-static {v2, v1, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

###### Class j8.k0.b (j8.k0$b)
.class Lj8/k0$b;
.super Lcom/google/android/gms/ads/AdListener;
.source "FragmentCustomAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/k0;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj8/k0;


# direct methods
.method constructor <init>(Lj8/k0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/k0$b;->a:Lj8/k0;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->e()V

    return-void
.end method

.method public m(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->m(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    iget-object p1, p0, Lj8/k0$b;->a:Lj8/k0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj8/k0;->y(Lj8/k0;Z)Z

    .line 3
    iget-object p1, p0, Lj8/k0$b;->a:Lj8/k0;

    invoke-static {p1}, Lj8/k0;->z(Lj8/k0;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lj8/k0$b;->a:Lj8/k0;

    invoke-static {p1}, Lj8/k0;->A(Lj8/k0;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public n()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->n()V

    return-void
.end method

.method public o()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->o()V

    .line 2
    iget-object v0, p0, Lj8/k0$b;->a:Lj8/k0;

    invoke-static {v0}, Lj8/k0;->B(Lj8/k0;)Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lj8/k0$b;->a:Lj8/k0;

    invoke-static {v0}, Lj8/k0;->C(Lj8/k0;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lj8/k0$b;->a:Lj8/k0;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lj8/k0;->x(Lj8/k0;Z)Z

    .line 5
    iget-object v0, p0, Lj8/k0$b;->a:Lj8/k0;

    invoke-static {v0}, Lj8/k0;->z(Lj8/k0;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lj8/k0$b;->a:Lj8/k0;

    invoke-static {v0}, Lj8/k0;->A(Lj8/k0;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lj8/k0$b;->a:Lj8/k0;

    invoke-static {v0, v2}, Lj8/k0;->y(Lj8/k0;Z)Z

    return-void
.end method

.method public p()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->p()V

    return-void
.end method

.method public w0()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->w0()V

    .line 2
    iget-object v0, p0, Lj8/k0$b;->a:Lj8/k0;

    iget-object v1, v0, Lj8/k0;->H:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 3
    iget-object v0, v0, Lj8/k0;->I:Ljava/lang/String;

    const-string v2, "clickAds"

    const-string v3, "click on ads"

    invoke-static {v2, v1, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

###### Class j8.k0.c (j8.k0$c)
.class Lj8/k0$c;
.super Ljava/lang/Object;
.source "FragmentCustomAds.java"

# interfaces
.implements Lt2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/k0;->J(Ljava/lang/String;Lt2/f;Landroid/view/View$OnClickListener;)V
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
.field final synthetic a:Lt2/f;

.field final synthetic b:Lj8/k0;


# direct methods
.method constructor <init>(Lj8/k0;Lt2/f;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lj8/k0$c;->b:Lj8/k0;

    iput-object p2, p0, Lj8/k0$c;->a:Lt2/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z
    .registers 6

    .line 1
    check-cast p1, Ll2/b;

    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lj8/k0$c;->d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z
    .registers 5

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lj8/k0$c;->c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z
    .registers 6
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
    iget-object v0, p0, Lj8/k0$c;->a:Lt2/f;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lt2/f;->b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z

    .line 3
    :cond_7
    iget-object p1, p0, Lj8/k0$c;->b:Lj8/k0;

    invoke-static {p1}, Lj8/k0;->v(Lj8/k0;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return p2
.end method

.method public d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z
    .registers 12
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
    iget-object v0, p0, Lj8/k0$c;->a:Lt2/f;

    if-eqz v0, :cond_c

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-interface/range {v0 .. v5}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z

    .line 3
    :cond_c
    iget-object p1, p0, Lj8/k0$c;->b:Lj8/k0;

    invoke-static {p1}, Lj8/k0;->v(Lj8/k0;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return p2
.end method

###### Class j8.k0.d (j8.k0$d)
.class public Lj8/k0$d;
.super Landroid/content/BroadcastReceiver;
.source "FragmentCustomAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj8/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lj8/k0;


# direct methods
.method public constructor <init>(Lj8/k0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/k0$d;->a:Lj8/k0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lj8/k0;)V
    .registers 1

    invoke-static {p0}, Lj8/k0$d;->b(Lj8/k0;)V

    return-void
.end method

.method private static synthetic b(Lj8/k0;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lj8/k0;->r(Lj8/k0;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-static {p1}, Ly8/y;->q(Landroid/content/Context;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_17

    .line 2
    iget-object p1, p0, Lj8/k0$d;->a:Lj8/k0;

    invoke-static {p1}, Lj8/k0;->q(Lj8/k0;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lj8/k0$d;->a:Lj8/k0;

    new-instance v0, Lj8/l0;

    invoke-direct {v0, p2}, Lj8/l0;-><init>(Lj8/k0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    return-void
.end method

###### Class j8.l0 (j8.l0)
.class public final synthetic Lj8/l0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lj8/k0;


# direct methods
.method public synthetic constructor <init>(Lj8/k0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/l0;->o:Lj8/k0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lj8/l0;->o:Lj8/k0;

    invoke-static {v0}, Lj8/k0$d;->a(Lj8/k0;)V

    return-void
.end method

###### Class j8.k0.e (j8.k0$e)
.class public Lj8/k0$e;
.super Ljava/util/TimerTask;
.source "FragmentCustomAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj8/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field o:I

.field final synthetic p:Lj8/k0;


# direct methods
.method public constructor <init>(Lj8/k0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/k0$e;->p:Lj8/k0;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lj8/k0$e;->o:I

    return-void
.end method

.method public static synthetic a(Lj8/k0$e;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/k0$e;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lj8/k0$e;)V
    .registers 1

    invoke-direct {p0}, Lj8/k0$e;->d()V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .registers 7

    const/4 p1, 0x0

    .line 1
    :try_start_1
    iget-object v0, p0, Lj8/k0$e;->p:Lj8/k0;

    invoke-static {v0}, Lj8/k0;->u(Lj8/k0;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lj8/k0$e;->o:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Ads;

    iget-object v0, v0, Lcom/tebakgambar/model/Ads;->url:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    goto :goto_22

    .line 2
    :catch_14
    iget-object v0, p0, Lj8/k0$e;->p:Lj8/k0;

    invoke-static {v0}, Lj8/k0;->u(Lj8/k0;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Ads;

    iget-object v0, v0, Lcom/tebakgambar/model/Ads;->url:Ljava/lang/String;

    :goto_22
    const-string v1, "http://"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "android.intent.action.VIEW"

    if-eqz v1, :cond_4b

    .line 4
    :try_start_2c
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5
    iget-object v0, p0, Lj8/k0$e;->p:Lj8/k0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_3a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2c .. :try_end_3a} :catch_3b

    goto :goto_8a

    .line 6
    :catch_3b
    iget-object v0, p0, Lj8/k0$e;->p:Lj8/k0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    const-string v1, "No browser found"

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_8a

    .line 7
    :cond_4b
    :try_start_4b
    iget-object p1, p0, Lj8/k0$e;->p:Lj8/k0;

    new-instance v1, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_6a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4b .. :try_end_6a} :catch_6b

    goto :goto_8a

    .line 8
    :catch_6b
    iget-object p1, p0, Lj8/k0$e;->p:Lj8/k0;

    new-instance v1, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_8a
    return-void
.end method

.method private synthetic d()V
    .registers 7

    .line 1
    iget v0, p0, Lj8/k0$e;->o:I

    iget-object v1, p0, Lj8/k0$e;->p:Lj8/k0;

    invoke-static {v1}, Lj8/k0;->D(Lj8/k0;)I

    move-result v1

    if-ge v0, v1, :cond_72

    .line 2
    iget v0, p0, Lj8/k0$e;->o:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_17

    iget-object v0, p0, Lj8/k0$e;->p:Lj8/k0;

    invoke-static {v0}, Lj8/k0;->s(Lj8/k0;)Landroid/widget/ImageView;

    move-result-object v0

    goto :goto_1d

    :cond_17
    iget-object v0, p0, Lj8/k0$e;->p:Lj8/k0;

    invoke-static {v0}, Lj8/k0;->t(Lj8/k0;)Landroid/widget/ImageView;

    move-result-object v0

    .line 3
    :goto_1d
    iget v1, p0, Lj8/k0$e;->o:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    iget-object v1, p0, Lj8/k0$e;->p:Lj8/k0;

    invoke-static {v1}, Lj8/k0;->s(Lj8/k0;)Landroid/widget/ImageView;

    move-result-object v1

    goto :goto_31

    :cond_2b
    iget-object v1, p0, Lj8/k0$e;->p:Lj8/k0;

    invoke-static {v1}, Lj8/k0;->t(Lj8/k0;)Landroid/widget/ImageView;

    move-result-object v1

    .line 4
    :goto_31
    iget-object v3, p0, Lj8/k0$e;->p:Lj8/k0;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v3

    if-nez v3, :cond_3a

    return-void

    .line 5
    :cond_3a
    iget-object v3, p0, Lj8/k0$e;->p:Lj8/k0;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v3

    invoke-static {v3}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v3

    iget-object v4, p0, Lj8/k0$e;->p:Lj8/k0;

    .line 6
    invoke-static {v4}, Lj8/k0;->u(Lj8/k0;)Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lj8/k0$e;->o:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tebakgambar/model/Ads;

    iget-object v4, v4, Lcom/tebakgambar/model/Ads;->imageId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lv1/j;->w(Ljava/lang/Integer;)Lv1/d;

    move-result-object v3

    new-instance v4, Lj8/k0$e$a;

    invoke-direct {v4, p0, v0, v1}, Lj8/k0$e$a;-><init>(Lj8/k0$e;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 7
    invoke-virtual {v3, v4}, Lv1/c;->N(Lt2/f;)Lv1/c;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    .line 9
    new-instance v1, Lj8/m0;

    invoke-direct {v1, p0}, Lj8/m0;-><init>(Lj8/k0$e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget v0, p0, Lj8/k0$e;->o:I

    add-int/2addr v0, v2

    iput v0, p0, Lj8/k0$e;->o:I

    goto :goto_7e

    :cond_72
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lj8/k0$e;->o:I

    .line 12
    iget-object v0, p0, Lj8/k0$e;->p:Lj8/k0;

    invoke-static {v0}, Lj8/k0;->u(Lj8/k0;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    :goto_7e
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/k0$e;->p:Lj8/k0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    iget-object v0, p0, Lj8/k0$e;->p:Lj8/k0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    new-instance v1, Lj8/n0;

    invoke-direct {v1, p0}, Lj8/n0;-><init>(Lj8/k0$e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class j8.k0.e.a (j8.k0$e$a)
.class Lj8/k0$e$a;
.super Ljava/lang/Object;
.source "FragmentCustomAds.java"

# interfaces
.implements Lt2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/k0$e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt2/f<",
        "Ljava/lang/Integer;",
        "Ll2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lj8/k0$e;


# direct methods
.method constructor <init>(Lj8/k0$e;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lj8/k0$e$a;->c:Lj8/k0$e;

    iput-object p2, p0, Lj8/k0$e$a;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lj8/k0$e$a;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z
    .registers 6

    .line 1
    check-cast p1, Ll2/b;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p5}, Lj8/k0$e$a;->d(Ll2/b;Ljava/lang/Integer;Lv2/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z
    .registers 5

    .line 1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lj8/k0$e$a;->c(Ljava/lang/Exception;Ljava/lang/Integer;Lv2/j;Z)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Exception;Ljava/lang/Integer;Lv2/j;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/Integer;",
            "Lv2/j<",
            "Ll2/b;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lj8/k0$e$a;->a:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lj8/k0$e$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public d(Ll2/b;Ljava/lang/Integer;Lv2/j;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/b;",
            "Ljava/lang/Integer;",
            "Lv2/j<",
            "Ll2/b;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lj8/k0$e$a;->a:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lj8/k0$e$a;->b:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    return p2
.end method

###### Class j8.m0 (j8.m0)
.class public final synthetic Lj8/m0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/k0$e;


# direct methods
.method public synthetic constructor <init>(Lj8/k0$e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/m0;->o:Lj8/k0$e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lj8/m0;->o:Lj8/k0$e;

    invoke-static {v0, p1}, Lj8/k0$e;->a(Lj8/k0$e;Landroid/view/View;)V

    return-void
.end method

###### Class j8.n0 (j8.n0)
.class public final synthetic Lj8/n0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lj8/k0$e;


# direct methods
.method public synthetic constructor <init>(Lj8/k0$e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/n0;->o:Lj8/k0$e;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lj8/n0;->o:Lj8/k0$e;

    invoke-static {v0}, Lj8/k0$e;->b(Lj8/k0$e;)V

    return-void
.end method

###### Class j8.i0 (j8.i0)
.class public final synthetic Lj8/i0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# instance fields
.field public final synthetic a:Lj8/k0;


# direct methods
.method public synthetic constructor <init>(Lj8/k0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/i0;->a:Lj8/k0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .registers 3

    iget-object v0, p0, Lj8/i0;->a:Lj8/k0;

    invoke-static {v0, p1}, Lj8/k0;->o(Lj8/k0;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

###### Class j8.j0 (j8.j0)
.class public final synthetic Lj8/j0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lj8/k0;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Lt2/f;

.field public final synthetic r:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lj8/k0;Ljava/lang/String;Lt2/f;Landroid/view/View$OnClickListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/j0;->o:Lj8/k0;

    iput-object p2, p0, Lj8/j0;->p:Ljava/lang/String;

    iput-object p3, p0, Lj8/j0;->q:Lt2/f;

    iput-object p4, p0, Lj8/j0;->r:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lj8/j0;->o:Lj8/k0;

    iget-object v1, p0, Lj8/j0;->p:Ljava/lang/String;

    iget-object v2, p0, Lj8/j0;->q:Lt2/f;

    iget-object v3, p0, Lj8/j0;->r:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v2, v3}, Lj8/k0;->p(Lj8/k0;Ljava/lang/String;Lt2/f;Landroid/view/View$OnClickListener;)V

    return-void
.end method
