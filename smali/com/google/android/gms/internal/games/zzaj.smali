###### Class com.google.android.gms.internal.games.zzaj (com.google.android.gms.internal.games.zzaj)
.class final synthetic Lcom/google/android/gms/internal/games/zzaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzaj;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/games/zzaj;->b:I

    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/games/internal/zzf;->M1(Ljava/lang/String;I)V

    return-void
.end method
