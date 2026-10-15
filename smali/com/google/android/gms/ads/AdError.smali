###### Class com.google.android.gms.ads.AdError (com.google.android.gms.ads.AdError)
.class public Lcom/google/android/gms/ads/AdError;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/ads/AdError;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdError;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/AdError;->a:I

    iput-object p2, p0, Lcom/google/android/gms/ads/AdError;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/AdError;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/AdError;->d:Lcom/google/android/gms/ads/AdError;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/AdError;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/ads/internal/client/zze;
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->d:Lcom/google/android/gms/ads/AdError;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_16

    .line 2
    :cond_6
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zze;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->d:Lcom/google/android/gms/ads/AdError;

    iget v2, v1, Lcom/google/android/gms/ads/AdError;->a:I

    iget-object v3, v1, Lcom/google/android/gms/ads/AdError;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/ads/AdError;->c:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/client/zze;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;Landroid/os/IBinder;)V

    :goto_16
    move-object v11, v0

    .line 3
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zze;

    iget v8, p0, Lcom/google/android/gms/ads/AdError;->a:I

    iget-object v9, p0, Lcom/google/android/gms/ads/AdError;->b:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/gms/ads/AdError;->c:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/ads/internal/client/zze;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/google/android/gms/ads/AdError;->a:I

    const-string v2, "Code"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->b:Ljava/lang/String;

    const-string v2, "Message"

    .line 3
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->c:Ljava/lang/String;

    const-string v2, "Domain"

    .line 4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->d:Lcom/google/android/gms/ads/AdError;

    const-string v2, "Cause"

    if-nez v1, :cond_26

    const-string v1, "null"

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2d

    .line 6
    :cond_26
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdError;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2d
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdError;->e()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_c

    :catch_a
    const-string v0, "Error forming toString output."

    :goto_c
    return-object v0
.end method
