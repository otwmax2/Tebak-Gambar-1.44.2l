###### Class j8.b (j8.b)
.class public Lj8/b;
.super Ljava/lang/Object;
.source "AdManager.java"


# static fields
.field private static d:Lj8/b;


# instance fields
.field private a:Z

.field private b:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field private c:Lcom/google/android/gms/ads/interstitial/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lj8/b;->a:Z

    return-void
.end method

.method public static synthetic a(Lj8/b;Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/b;->r(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    return-void
.end method

.method static synthetic b(Lj8/b;)Lcom/google/android/gms/ads/rewarded/RewardedAd;
    .registers 1

    .line 1
    iget-object p0, p0, Lj8/b;->b:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-object p0
.end method

.method static synthetic c(Lj8/b;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/b;->b:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-object p1
.end method

.method static synthetic d(Lj8/b;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .registers 1

    .line 1
    iget-object p0, p0, Lj8/b;->c:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-object p0
.end method

.method static synthetic e(Lj8/b;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/b;->c:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-object p1
.end method

.method public static k()Lcom/google/android/gms/ads/AdRequest;
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->c()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method public static l()Lj8/b;
    .registers 1

    .line 1
    sget-object v0, Lj8/b;->d:Lj8/b;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lj8/b;

    invoke-direct {v0}, Lj8/b;-><init>()V

    sput-object v0, Lj8/b;->d:Lj8/b;

    .line 3
    :cond_b
    sget-object v0, Lj8/b;->d:Lj8/b;

    return-object v0
.end method

.method public static n(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->a()Lcom/google/android/gms/ads/FullScreenContentCallback;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static o(Lcom/google/android/gms/ads/rewarded/RewardedAd;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a()Lcom/google/android/gms/ads/FullScreenContentCallback;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic r(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 2

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lj8/b;->a:Z

    return-void
.end method

.method private u()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lj8/b;->v(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method


# virtual methods
.method public A(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lj8/b;->b:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    new-instance v1, Lj8/a;

    invoke-direct {v1, p0}, Lj8/a;-><init>(Lj8/b;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->e(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    return-void
.end method

.method public f()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lj8/b;->i()V

    .line 2
    invoke-virtual {p0}, Lj8/b;->j()V

    return-void
.end method

.method public g()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lj8/b;->c:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 2
    invoke-virtual {p0}, Lj8/b;->s()V

    return-void
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lj8/b;->b:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lj8/b;->a:Z

    .line 3
    invoke-direct {p0}, Lj8/b;->u()V

    return-void
.end method

.method public i()V
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/b;->c:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->d(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    goto :goto_c

    .line 3
    :cond_9
    invoke-virtual {p0}, Lj8/b;->s()V

    :goto_c
    return-void
.end method

.method public j()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lj8/b;->a:Z

    .line 2
    iget-object v0, p0, Lj8/b;->b:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->d(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    goto :goto_f

    .line 4
    :cond_c
    invoke-direct {p0}, Lj8/b;->u()V

    :goto_f
    return-void
.end method

.method public m()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/b;->c:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->a()Lcom/google/android/gms/ads/FullScreenContentCallback;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public p()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/b;->b:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->a()Lcom/google/android/gms/ads/FullScreenContentCallback;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public q()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lj8/b;->a:Z

    return v0
.end method

.method public s()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lj8/b;->t(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

.method public t(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/b;->c:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_9

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->d(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    :cond_9
    return-void

    .line 3
    :cond_a
    new-instance v0, Lj8/b$b;

    invoke-direct {v0, p0, p1}, Lj8/b$b;-><init>(Lj8/b;Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    const-string p1, "ca-app-pub-7269282889157841/9809910418"

    invoke-virtual {p0, p1, v0}, Lj8/b;->w(Ljava/lang/String;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    return-void
.end method

.method public v(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lj8/b;->b:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_9

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->d(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    :cond_9
    return-void

    .line 3
    :cond_a
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->c()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 4
    new-instance v1, Lj8/b$a;

    invoke-direct {v1, p0, p1}, Lj8/b$a;-><init>(Lj8/b;Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 5
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "ca-app-pub-7269282889157841/7807163213"

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->c(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method public w(Ljava/lang/String;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Lj8/b;->k()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-static {v0, p1, v1, p2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->c(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    return-void
.end method

.method public x(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lj8/b;->a:Z

    return-void
.end method

.method public y()V
    .registers 2

    .line 1
    sget-object v0, Lj8/b;->d:Lj8/b;

    invoke-virtual {v0}, Lj8/b;->s()V

    .line 2
    sget-object v0, Lj8/b;->d:Lj8/b;

    invoke-direct {v0}, Lj8/b;->u()V

    return-void
.end method

.method public z(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/b;->c:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->f(Landroid/app/Activity;)V

    return-void
.end method

###### Class j8.b.a (j8.b$a)
.class Lj8/b$a;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/b;->v(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field final synthetic b:Lj8/b;


# direct methods
.method constructor <init>(Lj8/b;Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lj8/b$a;->b:Lj8/b;

    iput-object p2, p0, Lj8/b$a;->a:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->a(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    iget-object p1, p0, Lj8/b$a;->b:Lj8/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj8/b;->c(Lj8/b;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lj8/b$a;->c(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->b(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lj8/b$a;->b:Lj8/b;

    invoke-static {v0, p1}, Lj8/b;->c(Lj8/b;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 3
    iget-object p1, p0, Lj8/b$a;->a:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz p1, :cond_17

    .line 4
    iget-object p1, p0, Lj8/b$a;->b:Lj8/b;

    invoke-static {p1}, Lj8/b;->b(Lj8/b;)Lcom/google/android/gms/ads/rewarded/RewardedAd;

    move-result-object p1

    iget-object v0, p0, Lj8/b$a;->a:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->d(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    :cond_17
    return-void
.end method

###### Class j8.b.C0182b (j8.b$b)
.class Lj8/b$b;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/b;->t(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field final synthetic b:Lj8/b;


# direct methods
.method constructor <init>(Lj8/b;Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lj8/b$b;->b:Lj8/b;

    iput-object p2, p0, Lj8/b$b;->a:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->a(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    iget-object p1, p0, Lj8/b$b;->b:Lj8/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj8/b;->e(Lj8/b;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lj8/b$b;->c(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->b(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lj8/b$b;->b:Lj8/b;

    invoke-static {v0, p1}, Lj8/b;->e(Lj8/b;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 3
    iget-object p1, p0, Lj8/b$b;->b:Lj8/b;

    invoke-static {p1}, Lj8/b;->d(Lj8/b;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object p1

    iget-object v0, p0, Lj8/b$b;->a:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->d(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

###### Class j8.a (j8.a)
.class public final synthetic Lj8/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# instance fields
.field public final synthetic a:Lj8/b;


# direct methods
.method public synthetic constructor <init>(Lj8/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/a;->a:Lj8/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 3

    iget-object v0, p0, Lj8/a;->a:Lj8/b;

    invoke-static {v0, p1}, Lj8/b;->a(Lj8/b;Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    return-void
.end method
