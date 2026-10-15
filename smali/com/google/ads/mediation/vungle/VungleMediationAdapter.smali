###### Class com.google.ads.mediation.vungle.VungleMediationAdapter (com.google.ads.mediation.vungle.VungleMediationAdapter)
.class public Lcom/google/ads/mediation/vungle/VungleMediationAdapter;
.super Lcom/google/android/gms/ads/mediation/Adapter;
.source "VungleMediationAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationRewardedAd;
.implements Lcom/vungle/warren/LoadAdCallback;
.implements Lcom/vungle/warren/PlayAdCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/vungle/VungleMediationAdapter$i;
    }
.end annotation


# static fields
.field public static final ERROR_AD_ALREADY_LOADED:I = 0x68

.field public static final ERROR_BANNER_SIZE_MISMATCH:I = 0x66

.field public static final ERROR_CANNOT_PLAY_AD:I = 0x6b

.field public static final ERROR_DOMAIN:Ljava/lang/String; = "com.google.ads.mediation.vungle"

.field public static final ERROR_INITIALIZATION_FAILURE:I = 0x69

.field public static final ERROR_INVALID_SERVER_PARAMETERS:I = 0x65

.field public static final ERROR_REQUIRES_ACTIVITY_CONTEXT:I = 0x67

.field public static final ERROR_VUNGLE_BANNER_NULL:I = 0x6a

.field public static final KEY_APP_ID:Ljava/lang/String; = "appid"

.field private static final TAG:Ljava/lang/String; = "VungleMediationAdapter"

.field public static final VUNGLE_SDK_ERROR_DOMAIN:Ljava/lang/String; = "com.vungle.warren"

.field private static final mPlacementsInUse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/ads/mediation/vungle/VungleMediationAdapter;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAdConfig:Lcom/vungle/warren/AdConfig;

.field private final mHandler:Landroid/os/Handler;

.field private mMediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMediationRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

.field private mPlacement:Ljava/lang/String;

.field private mUserID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mPlacementsInUse:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/Adapter;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mUserID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mPlacement:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mPlacementsInUse:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mMediationRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    return-object p0
.end method

.method static synthetic access$402(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mMediationRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mMediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    return-object p0
.end method

.method public static getAdError(Lcom/vungle/warren/error/VungleException;)Lcom/google/android/gms/ads/AdError;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    invoke-virtual {p0}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.vungle.warren"

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public creativeId(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;
    .registers 7

    const-string v0, "6.10.2"

    const-string v1, "\\."

    .line 1
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2
    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-lt v2, v5, :cond_27

    .line 3
    aget-object v0, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 5
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 6
    new-instance v3, Lcom/google/android/gms/ads/mediation/VersionInfo;

    invoke-direct {v3, v0, v2, v1}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v3

    :cond_27
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v0, "Unexpected SDK version format: %s. Returning 0.0.0 for SDK version."

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Lcom/google/android/gms/ads/mediation/VersionInfo;

    invoke-direct {v0, v4, v4, v4}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v0
.end method

.method public getVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;
    .registers 7

    const-string v0, "6.10.2.0"

    const-string v1, "\\."

    .line 1
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2
    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-lt v2, v5, :cond_31

    .line 3
    aget-object v0, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 5
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    const/4 v4, 0x3

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v3, v1

    .line 6
    new-instance v1, Lcom/google/android/gms/ads/mediation/VersionInfo;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v1

    :cond_31
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v0, "Unexpected adapter version format: %s. Returning 0.0.0 for adapter version."

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Lcom/google/android/gms/ads/mediation/VersionInfo;

    invoke-direct {v0, v4, v4, v4}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/mediation/MediationConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->b()V

    return-void

    .line 3
    :cond_a
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_13
    :goto_13
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "appid"

    if-eqz v1, :cond_33

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/mediation/MediationConfiguration;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->a()Landroid/os/Bundle;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 9
    :cond_33
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p3

    if-gtz p3, :cond_57

    if-eqz p2, :cond_56

    .line 10
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    const/16 p3, 0x65

    const-string v0, "Missing or Invalid App ID."

    const-string v1, "com.google.ads.mediation.vungle"

    invoke-direct {p1, p3, v0, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object p3, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->a(Ljava/lang/String;)V

    :cond_56
    return-void

    .line 13
    :cond_57
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    if-le p3, v3, :cond_7e

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, p3, v4

    .line 14
    invoke-virtual {v0}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    const/4 v0, 0x2

    aput-object v1, p3, v0

    const-string v0, "Multiple \'%s\' entries found: %s. Using \'%s\' to initialize the Vungle SDK."

    .line 15
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 16
    sget-object v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_7e
    invoke-static {}, Lcom/google/ads/mediation/vungle/b;->b()Lcom/google/ads/mediation/vungle/b;

    move-result-object p3

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$a;

    invoke-direct {v0, p0, p2}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$a;-><init>(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V

    .line 19
    invoke-virtual {p3, v1, p1, v0}, Lcom/google/ads/mediation/vungle/b;->c(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/mediation/vungle/b$d;)V

    return-void
.end method

.method public loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mMediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->c()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_14

    const-string v2, "userId"

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mUserID:Ljava/lang/String;

    .line 5
    :cond_14
    invoke-static {}, Lcom/vungle/mediation/VungleManager;->getInstance()Lcom/vungle/mediation/VungleManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/vungle/mediation/VungleManager;->findPlacement(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mPlacement:Ljava/lang/String;

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x65

    const-string v4, "com.google.ads.mediation.vungle"

    if-eqz v2, :cond_3c

    .line 7
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    const-string v0, "Failed to load ad from Vungle. Missing or invalid Placement ID."

    invoke-direct {p1, v3, v0, v4}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->a(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 10
    :cond_3c
    sget-object v2, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mPlacementsInUse:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mPlacement:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    iget-object v5, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mPlacement:Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 12
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    const/16 v0, 0x68

    const-string v1, "Only a maximum of one ad can be loaded per placement."

    invoke-direct {p1, v0, v1, v4}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->a(Lcom/google/android/gms/ads/AdError;)V

    return-void

    :cond_6a
    const-string v2, "appid"

    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 17
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    const-string v0, "Failed to load ad from Vungle. Missing or Invalid App ID."

    invoke-direct {p1, v3, v0, v4}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->a(Lcom/google/android/gms/ads/AdError;)V

    return-void

    :cond_8a
    const/4 p2, 0x0

    .line 20
    invoke-static {v0, p2}, Lcom/vungle/mediation/VungleExtrasBuilder;->adConfigWithNetworkExtras(Landroid/os/Bundle;Z)Lcom/vungle/warren/AdConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mAdConfig:Lcom/vungle/warren/AdConfig;

    .line 21
    invoke-static {}, Lcom/google/ads/mediation/vungle/b;->b()Lcom/google/ads/mediation/vungle/b;

    move-result-object p2

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->a()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$b;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$b;-><init>(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)V

    .line 23
    invoke-virtual {p2, v1, p1, v0}, Lcom/google/ads/mediation/vungle/b;->c(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/mediation/vungle/b$d;)V

    return-void
.end method

.method public onAdClick(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$f;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$f;-><init>(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdEnd(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$e;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$e;-><init>(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdEnd(Ljava/lang/String;ZZ)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onAdLeftApplication(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onAdLoad(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$c;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$c;-><init>(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdRewarded(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$g;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$g;-><init>(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$d;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$d;-><init>(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdViewed(Ljava/lang/String;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mMediationRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->e()V

    .line 2
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mMediationRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->g()V

    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .registers 5

    .line 1
    invoke-static {p2}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->getAdError(Lcom/vungle/warren/error/VungleException;)Lcom/google/android/gms/ads/AdError;

    move-result-object p2

    .line 2
    sget-object v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$h;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$h;-><init>(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;Lcom/google/android/gms/ads/AdError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showAd(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mPlacement:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->mAdConfig:Lcom/vungle/warren/AdConfig;

    invoke-static {p1, v0, p0}, Lcom/vungle/warren/Vungle;->playAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)V

    return-void
.end method

###### Class com.google.ads.mediation.vungle.VungleMediationAdapter.a (com.google.ads.mediation.vungle.VungleMediationAdapter$a)
.class Lcom/google/ads/mediation/vungle/VungleMediationAdapter$a;
.super Ljava/lang/Object;
.source "VungleMediationAdapter.java"

# interfaces
.implements Lcom/google/ads/mediation/vungle/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;

.field final synthetic b:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$a;->b:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$a;->a:Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeError(Lcom/google/android/gms/ads/AdError;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$a;->a:Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onInitializeSuccess()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$a;->a:Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->b()V

    return-void
.end method

###### Class com.google.ads.mediation.vungle.VungleMediationAdapter.b (com.google.ads.mediation.vungle.VungleMediationAdapter$b)
.class Lcom/google/ads/mediation/vungle/VungleMediationAdapter$b;
.super Ljava/lang/Object;
.source "VungleMediationAdapter.java"

# interfaces
.implements Lcom/google/ads/mediation/vungle/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$b;->a:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeError(Lcom/google/android/gms/ads/AdError;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$b;->a:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$500(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->a(Lcom/google/android/gms/ads/AdError;)V

    .line 3
    invoke-static {}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$300()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$b;->a:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$200(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onInitializeSuccess()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$b;->a:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$100(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1, v1}, Lcom/vungle/warren/Vungle;->setIncentivizedFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$300()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$b;->a:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v1}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$200(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$b;->a:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$b;->a:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$200(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$b;->a:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    .line 5
    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$500(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$b;->a:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    .line 6
    invoke-static {v0, v1}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$402(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    return-void

    .line 7
    :cond_3c
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$b;->a:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$200(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$b;->a:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0, v1}, Lcom/vungle/warren/Vungle;->loadAd(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method

###### Class com.google.ads.mediation.vungle.VungleMediationAdapter.c (com.google.ads.mediation.vungle.VungleMediationAdapter$c)
.class Lcom/google/ads/mediation/vungle/VungleMediationAdapter$c;
.super Ljava/lang/Object;
.source "VungleMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->onAdLoad(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$c;->o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$c;->o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$500(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$c;->o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    .line 3
    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$500(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$c;->o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    .line 4
    invoke-static {v0, v1}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$402(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    .line 5
    :cond_19
    invoke-static {}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$300()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$c;->o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v1}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$200(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$c;->o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.google.ads.mediation.vungle.VungleMediationAdapter.d (com.google.ads.mediation.vungle.VungleMediationAdapter$d)
.class Lcom/google/ads/mediation/vungle/VungleMediationAdapter$d;
.super Ljava/lang/Object;
.source "VungleMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->onAdStart(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$d;->o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$d;->o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$400(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$d;->o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$400(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->c()V

    :cond_11
    return-void
.end method

###### Class com.google.ads.mediation.vungle.VungleMediationAdapter.e (com.google.ads.mediation.vungle.VungleMediationAdapter$e)
.class Lcom/google/ads/mediation/vungle/VungleMediationAdapter$e;
.super Ljava/lang/Object;
.source "VungleMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->onAdEnd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$e;->p:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$e;->o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$e;->p:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$400(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$e;->p:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$400(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->f()V

    .line 3
    :cond_11
    invoke-static {}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$300()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.google.ads.mediation.vungle.VungleMediationAdapter.f (com.google.ads.mediation.vungle.VungleMediationAdapter$f)
.class Lcom/google/ads/mediation/vungle/VungleMediationAdapter$f;
.super Ljava/lang/Object;
.source "VungleMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->onAdClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$f;->o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$f;->o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$400(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$f;->o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$400(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->h()V

    :cond_11
    return-void
.end method

###### Class com.google.ads.mediation.vungle.VungleMediationAdapter.g (com.google.ads.mediation.vungle.VungleMediationAdapter$g)
.class Lcom/google/ads/mediation/vungle/VungleMediationAdapter$g;
.super Ljava/lang/Object;
.source "VungleMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->onAdRewarded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$g;->o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$g;->o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$400(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$g;->o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$400(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->b()V

    .line 3
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$g;->o:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$400(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    new-instance v1, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$i;

    const/4 v2, 0x1

    const-string v3, "vungle"

    invoke-direct {v1, v3, v2}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$i;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->a(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    :cond_22
    return-void
.end method

###### Class com.google.ads.mediation.vungle.VungleMediationAdapter.h (com.google.ads.mediation.vungle.VungleMediationAdapter$h)
.class Lcom/google/ads/mediation/vungle/VungleMediationAdapter$h;
.super Ljava/lang/Object;
.source "VungleMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/google/android/gms/ads/AdError;

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;Lcom/google/android/gms/ads/AdError;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$h;->q:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$h;->o:Lcom/google/android/gms/ads/AdError;

    iput-object p3, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$h;->p:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$h;->q:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$500(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$h;->q:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$500(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$h;->o:Lcom/google/android/gms/ads/AdError;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->a(Lcom/google/android/gms/ads/AdError;)V

    .line 3
    :cond_13
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$h;->q:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$400(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 4
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    const/16 v1, 0x65

    const-string v2, "Failed to show ad from Vungle."

    const-string v3, "com.google.ads.mediation.vungle"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$h;->q:Lcom/google/ads/mediation/vungle/VungleMediationAdapter;

    invoke-static {v1}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$400(Lcom/google/ads/mediation/vungle/VungleMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->d(Lcom/google/android/gms/ads/AdError;)V

    .line 6
    :cond_2f
    invoke-static {}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->access$300()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$h;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.google.ads.mediation.vungle.VungleMediationAdapter.i (com.google.ads.mediation.vungle.VungleMediationAdapter$i)
.class Lcom/google/ads/mediation/vungle/VungleMediationAdapter$i;
.super Ljava/lang/Object;
.source "VungleMediationAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/rewarded/RewardItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/vungle/VungleMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$i;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$i;->b:I

    return-void
.end method


# virtual methods
.method public o()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public p()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter$i;->b:I

    return v0
.end method
