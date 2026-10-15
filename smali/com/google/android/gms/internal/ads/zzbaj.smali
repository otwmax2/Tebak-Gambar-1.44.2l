###### Class com.google.android.gms.internal.ads.zzbaj (com.google.android.gms.internal.ads.zzbaj)
.class public abstract Lcom/google/android/gms/internal/ads/zzbaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Object;


# direct methods
.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbai;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbaj;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbaj;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbaj;->c:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->a()Lcom/google/android/gms/internal/ads/zzbak;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbak;->d(Lcom/google/android/gms/internal/ads/zzbaj;)V

    return-void
.end method

.method public static f(ILjava/lang/String;F)Lcom/google/android/gms/internal/ads/zzbaj;
    .registers 4

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbag;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbag;-><init>(ILjava/lang/String;Ljava/lang/Float;)V

    return-object p0
.end method

.method public static g(ILjava/lang/String;I)Lcom/google/android/gms/internal/ads/zzbaj;
    .registers 4

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbae;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbae;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public static h(ILjava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbaj;
    .registers 4

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbaf;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzbaf;-><init>(ILjava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public static i(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/ads/zzbaj;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbad;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbad;-><init>(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static j(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbaj;
    .registers 4

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbah;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbah;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static k(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzbaj;
    .registers 3

    const/4 p0, 0x1

    const-string p1, "gads:sdk_core_constants:experiment_id"

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbaj;->j(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbaj;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->a()Lcom/google/android/gms/internal/ads/zzbak;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbak;->c(Lcom/google/android/gms/internal/ads/zzbaj;)V

    return-object p0
.end method


# virtual methods
.method protected abstract a(Lorg/json/JSONObject;)Ljava/lang/Object;
.end method

.method public abstract b(Landroid/os/Bundle;)Ljava/lang/Object;
.end method

.method protected abstract c(Landroid/content/SharedPreferences;)Ljava/lang/Object;
.end method

.method public abstract d(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->a:I

    return v0
.end method

.method public final l()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->b:Ljava/lang/String;

    return-object v0
.end method
