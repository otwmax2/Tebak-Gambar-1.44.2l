###### Class com.google.android.gms.internal.games.zzdn (com.google.android.gms.internal.games.zzdn)
.class final synthetic Lcom/google/android/gms/internal/games/zzdn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:I


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzdn;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/games/zzdn;->b:Z

    iget v2, p0, Lcom/google/android/gms/internal/games/zzdn;->c:I

    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/google/android/gms/games/internal/zzf;->g1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;ZI)V

    return-void
.end method
