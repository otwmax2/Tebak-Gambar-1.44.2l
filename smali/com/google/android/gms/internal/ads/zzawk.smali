###### Class com.google.android.gms.internal.ads.zzawk (com.google.android.gms.internal.ads.zzawk)
.class public final Lcom/google/android/gms/internal/ads/zzawk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field a:Lcom/google/android/gms/internal/ads/zzata;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field b:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbyp;->b:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbyp;->b:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawk;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzawf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzawf;-><init>(Lcom/google/android/gms/internal/ads/zzawk;Landroid/content/Context;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzawk;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzawk;->c:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

###### Class com.google.android.gms.internal.ads.zzawf (com.google.android.gms.internal.ads.zzawf)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzawf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzawk;

.field public final synthetic p:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzawk;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawf;->o:Lcom/google/android/gms/internal/ads/zzawk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawf;->p:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawf;->o:Lcom/google/android/gms/internal/ads/zzawk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawf;->p:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->w4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_36

    :try_start_16
    const-string v2, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzawg;->a:Lcom/google/android/gms/internal/ads/zzawg;

    .line 4
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbze;->b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzc;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzata;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzawk;->a:Lcom/google/android/gms/internal/ads/zzata;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzawk;->a:Lcom/google/android/gms/internal/ads/zzata;

    const-string v3, "GMA_SDK"

    .line 6
    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzata;->N7(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzawk;->b:Z
    :try_end_30
    .catch Lcom/google/android/gms/internal/ads/zzbzd; {:try_start_16 .. :try_end_30} :catch_31
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_30} :catch_31
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_30} :catch_31

    return-void

    :catch_31
    const-string v0, "Cannot dynamite load clearcut"

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    :cond_36
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzawg (com.google.android.gms.internal.ads.zzawg)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzawg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzc;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzawg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawg;->a:Lcom/google/android/gms/internal/ads/zzawg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzasz;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzata;

    move-result-object p1

    return-object p1
.end method
