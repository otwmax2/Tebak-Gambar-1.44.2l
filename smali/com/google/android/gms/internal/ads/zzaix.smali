###### Class com.google.android.gms.internal.ads.zzaix (com.google.android.gms.internal.ads.zzaix)
.class public final Lcom/google/android/gms/internal/ads/zzaix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;[B)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaix;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaix;->b:Ljava/lang/String;

    if-nez p3, :cond_e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_12

    .line 2
    :cond_e
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 3
    :goto_12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaix;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaix;->d:[B

    return-void
.end method
