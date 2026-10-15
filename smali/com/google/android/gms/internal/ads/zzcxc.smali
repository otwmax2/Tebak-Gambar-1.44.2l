###### Class com.google.android.gms.internal.ads.zzcxc (com.google.android.gms.internal.ads.zzcxc)
.class final Lcom/google/android/gms/internal/ads/zzcxc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final o:Ljava/lang/ref/WeakReference;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcxd;Lcom/google/android/gms/internal/ads/zzcxb;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxc;->o:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxc;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcxd;

    if-eqz v0, :cond_f

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcxa;->a:Lcom/google/android/gms/internal/ads/zzcxa;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzczy;->W0(Lcom/google/android/gms/internal/ads/zzczx;)V

    :cond_f
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcxa (com.google.android.gms.internal.ads.zzcxa)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcxa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczx;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzcxa;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcxa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcxa;->a:Lcom/google/android/gms/internal/ads/zzcxa;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcxe;

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcxe;->zza()V

    return-void
.end method
