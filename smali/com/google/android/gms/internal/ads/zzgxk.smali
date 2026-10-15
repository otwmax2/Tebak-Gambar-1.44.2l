###### Class com.google.android.gms.internal.ads.zzgxk (com.google.android.gms.internal.ads.zzgxk)
.class public final Lcom/google/android/gms/internal/ads/zzgxk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgxl;


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field private volatile a:Lcom/google/android/gms/internal/ads/zzgxl;

.field private volatile b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxk;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxk;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxk;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxk;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzgxl;)Lcom/google/android/gms/internal/ads/zzgxl;
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgxk;

    if-nez v0, :cond_12

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgwx;

    if-eqz v0, :cond_9

    goto :goto_12

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxk;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxk;-><init>(Lcom/google/android/gms/internal/ads/zzgxl;)V

    return-object v0

    :cond_12
    :goto_12
    return-object p0
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxk;->b:Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgxk;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxk;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxk;->b:Ljava/lang/Object;

    goto :goto_16

    :cond_d
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxk;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgxk;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    :cond_16
    :goto_16
    return-object v0
.end method
