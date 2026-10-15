###### Class com.google.android.gms.internal.ads.zzasb (com.google.android.gms.internal.ads.zzasb)
.class public final Lcom/google/android/gms/internal/ads/zzasb;
.super Lcom/google/android/gms/internal/ads/zzasm;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;II)V
    .registers 14

    const-string v2, "bXRNTWf8pTJMV81ptuODaUT8St7h/kbg9zRX7vuGaRSfPUSYi9ha6NvG/sFrxBFp"

    const-string v3, "+jZivRPpfg3QAF/dHEFIfvkp2rKh7j4ILi27Wnexdh0="

    const/16 v6, 0x49

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;II)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzasm;->b:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaqx;->b()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    if-eq v2, v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x2

    .line 2
    :goto_1f
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamv;->Y(I)Lcom/google/android/gms/internal/ads/zzamv;
    :try_end_22
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_22} :catch_23

    return-void

    :catch_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamv;->Y(I)Lcom/google/android/gms/internal/ads/zzamv;

    return-void
.end method
