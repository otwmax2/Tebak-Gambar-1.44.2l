###### Class com.google.android.gms.internal.ads.zzbao (com.google.android.gms.internal.ads.zzbao)
.class final Lcom/google/android/gms/internal/ads/zzbao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbda;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzbap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbao;->a:Lcom/google/android/gms/internal/ads/zzbap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->a:Lcom/google/android/gms/internal/ads/zzbap;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbap;->a(Lcom/google/android/gms/internal/ads/zzbap;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;D)Ljava/lang/Double;
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->a:Lcom/google/android/gms/internal/ads/zzbap;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbap;->a(Lcom/google/android/gms/internal/ads/zzbap;)Landroid/content/SharedPreferences;

    move-result-object v0

    double-to-float v1, p2

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->a:Lcom/google/android/gms/internal/ads/zzbap;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbap;->a(Lcom/google/android/gms/internal/ads/zzbap;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;J)Ljava/lang/Long;
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->a:Lcom/google/android/gms/internal/ads/zzbap;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbap;->a(Lcom/google/android/gms/internal/ads/zzbap;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->a:Lcom/google/android/gms/internal/ads/zzbap;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbap;->a(Lcom/google/android/gms/internal/ads/zzbap;)Landroid/content/SharedPreferences;

    move-result-object v0

    long-to-int p3, p2

    .line 2
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->a:Lcom/google/android/gms/internal/ads/zzbap;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbap;->a(Lcom/google/android/gms/internal/ads/zzbap;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->a:Lcom/google/android/gms/internal/ads/zzbap;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbap;->a(Lcom/google/android/gms/internal/ads/zzbap;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
