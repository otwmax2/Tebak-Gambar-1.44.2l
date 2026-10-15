###### Class com.google.android.gms.internal.ads.zzfsb (com.google.android.gms.internal.ads.zzfsb)
.class final Lcom/google/android/gms/internal/ads/zzfsb;
.super Lcom/google/android/gms/internal/ads/zzfrs;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final o:Lcom/google/android/gms/internal/ads/zzfrs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfrs;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfrs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsb;->o:Lcom/google/android/gms/internal/ads/zzfrs;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzfrs;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsb;->o:Lcom/google/android/gms/internal/ads/zzfrs;

    return-object v0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsb;->o:Lcom/google/android/gms/internal/ads/zzfrs;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzfrs;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfsb;

    if-eqz v0, :cond_13

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfsb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsb;->o:Lcom/google/android/gms/internal/ads/zzfrs;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfsb;->o:Lcom/google/android/gms/internal/ads/zzfrs;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsb;->o:Lcom/google/android/gms/internal/ads/zzfrs;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsb;->o:Lcom/google/android/gms/internal/ads/zzfrs;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".reverse()"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
