###### Class com.google.android.gms.games.stats.zza (com.google.android.gms.games.stats.zza)
.class public final Lcom/google/android/gms/games/stats/zza;
.super Lcom/google/android/gms/common/data/DataBufferRef;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/stats/PlayerStats;


# instance fields
.field private r:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public final A1()Landroid/os/Bundle;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/stats/zza;->r:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/stats/zza;->r:Landroid/os/Bundle;

    const-string v0, "unknown_raw_keys"

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown_raw_values"

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/data/DataBufferRef;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_42

    if-eqz v1, :cond_42

    const-string v2, ","

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7
    array-length v2, v0

    array-length v3, v1

    const/4 v4, 0x0

    if-gt v2, v3, :cond_2d

    const/4 v2, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    const-string v3, "Invalid raw arguments!"

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Asserts;->c(ZLjava/lang/Object;)V

    .line 8
    :goto_33
    array-length v2, v0

    if-ge v4, v2, :cond_42

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/games/stats/zza;->r:Landroid/os/Bundle;

    aget-object v3, v0, v4

    aget-object v5, v1, v4

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 10
    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/games/stats/zza;->r:Landroid/os/Bundle;

    return-object v0
.end method

.method public final G0()F
    .registers 2

    const-string v0, "spend_percentile"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->t(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final T3()F
    .registers 2

    const-string v0, "ave_session_length_minutes"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->t(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final U()F
    .registers 2

    const-string v0, "churn_probability"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->t(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final Z0()F
    .registers 3

    const-string v0, "total_spend_next_28_days"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->y(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 2
    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->t(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final e2()F
    .registers 2

    const-string v0, "num_sessions_percentile"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->t(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->W3(Lcom/google/android/gms/games/stats/PlayerStats;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->V3(Lcom/google/android/gms/games/stats/PlayerStats;)I

    move-result v0

    return v0
.end method

.method public final j2()F
    .registers 3

    const-string v0, "spend_probability"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->y(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 2
    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->t(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final k2()I
    .registers 2

    const-string v0, "num_purchases"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final synthetic p3()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;-><init>(Lcom/google/android/gms/games/stats/PlayerStats;)V

    return-object v0
.end method

.method public final r3()F
    .registers 3

    const-string v0, "high_spender_probability"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->y(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 2
    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->t(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->X3(Lcom/google/android/gms/games/stats/PlayerStats;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u3()I
    .registers 2

    const-string v0, "days_since_last_played"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final v0()I
    .registers 2

    const-string v0, "num_sessions"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->v(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/zza;->p3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/stats/PlayerStats;

    check-cast v0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
