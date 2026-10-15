###### Class com.google.android.gms.internal.ads.zzoh (com.google.android.gms.internal.ads.zzoh)
.class public final Lcom/google/android/gms/internal/ads/zzoh;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final o:I

.field public final p:Z

.field public final q:Lcom/google/android/gms/internal/ads/zzaf;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzaf;Z)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrack write failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzoh;->p:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoh;->o:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzoh;->q:Lcom/google/android/gms/internal/ads/zzaf;

    return-void
.end method
