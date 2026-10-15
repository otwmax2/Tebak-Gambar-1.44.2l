###### Class com.google.android.gms.internal.ads.zzern (com.google.android.gms.internal.ads.zzern)
.class public final Lcom/google/android/gms/internal/ads/zzern;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/zzfuu;

.field final b:Landroid/content/Context;

.field final c:Lcom/google/android/gms/internal/ads/zzavt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzavt;Lcom/google/android/gms/internal/ads/zzfuu;Landroid/content/Context;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzern;->c:Lcom/google/android/gms/internal/ads/zzavt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzern;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzern;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    const/16 v0, 0x2d

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzern;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzerm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzerm;-><init>(Lcom/google/android/gms/internal/ads/zzern;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuu;->e(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzerm (com.google.android.gms.internal.ads.zzerm)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzerm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzern;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzern;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzerm;->a:Lcom/google/android/gms/internal/ads/zzern;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzero;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzero;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
