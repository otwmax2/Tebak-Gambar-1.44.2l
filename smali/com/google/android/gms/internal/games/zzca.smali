###### Class com.google.android.gms.internal.games.zzca (com.google.android.gms.internal.games.zzca)
.class final Lcom/google/android/gms/internal/games/zzca;
.super Lcom/google/android/gms/internal/games/zzcg;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final synthetic t:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

.field private final synthetic u:I

.field private final synthetic v:I


# virtual methods
.method protected final synthetic s(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzca;->t:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/games/zzca;->u:I

    iget v2, p0, Lcom/google/android/gms/internal/games/zzca;->v:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/zzf;->C0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V

    return-void
.end method
