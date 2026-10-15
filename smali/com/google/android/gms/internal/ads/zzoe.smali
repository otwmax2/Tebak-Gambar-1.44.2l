###### Class com.google.android.gms.internal.ads.zzoe (com.google.android.gms.internal.ads.zzoe)
.class public final Lcom/google/android/gms/internal/ads/zzoe;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final o:I

.field public final p:Z

.field public final q:Lcom/google/android/gms/internal/ads/zzaf;


# direct methods
.method public constructor <init>(IIIILcom/google/android/gms/internal/ads/zzaf;ZLjava/lang/Exception;)V
    .registers 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrack init failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Config("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    if-eq p2, p6, :cond_2e

    const-string p2, ""

    goto :goto_30

    :cond_2e
    const-string p2, " (recoverable)"

    :goto_30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p0, p2, p7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoe;->o:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzoe;->p:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzoe;->q:Lcom/google/android/gms/internal/ads/zzaf;

    return-void
.end method
