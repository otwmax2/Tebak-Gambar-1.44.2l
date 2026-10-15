###### Class com.google.android.gms.internal.games.zzbo (com.google.android.gms.internal.games.zzbo)
.class final synthetic Lcom/google/android/gms/internal/games/zzbo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzbo;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/games/zzbo;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/games/zzbo;->c:I

    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/google/android/gms/games/internal/zzf;->a1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;II)V

    return-void
.end method
