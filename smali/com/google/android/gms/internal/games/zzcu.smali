###### Class com.google.android.gms.internal.games.zzcu (com.google.android.gms.internal.games.zzcu)
.class final synthetic Lcom/google/android/gms/internal/games/zzcu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Z


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzcu;->a:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/games/zzcu;->b:I

    iget-boolean v5, p0, Lcom/google/android/gms/internal/games/zzcu;->c:Z

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzf;

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v4, 0x0

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzf;->c1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;IZZ)V

    return-void
.end method
