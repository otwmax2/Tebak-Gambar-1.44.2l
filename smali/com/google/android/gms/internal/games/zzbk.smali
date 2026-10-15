###### Class com.google.android.gms.internal.games.zzbk (com.google.android.gms.internal.games.zzbk)
.class final synthetic Lcom/google/android/gms/internal/games/zzbk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzbk;->a:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/games/zzbk;->b:J

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzf;

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v5, 0x0

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzf;->d1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
