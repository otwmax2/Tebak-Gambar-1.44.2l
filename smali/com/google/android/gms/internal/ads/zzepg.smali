###### Class com.google.android.gms.internal.ads.zzepg (com.google.android.gms.internal.ads.zzepg)
.class public final Lcom/google/android/gms/internal/ads/zzepg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzevx;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    :goto_6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzepg;->a:Z

    return-void

    :cond_9
    const/4 p1, 0x0

    goto :goto_6
.end method


# virtual methods
.method public final zza()I
    .registers 2

    const/16 v0, 0x24

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzepg;->a:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzepf;->a:Lcom/google/android/gms/internal/ads/zzepf;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzepf (com.google.android.gms.internal.ads.zzepf)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzepf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepm;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzepf;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzepf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzepf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzepf;->a:Lcom/google/android/gms/internal/ads/zzepf;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "sdk_prefetch"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
