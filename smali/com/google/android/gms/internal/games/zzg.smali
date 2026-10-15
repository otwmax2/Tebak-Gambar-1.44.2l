###### Class com.google.android.gms.internal.games.zzg (com.google.android.gms.internal.games.zzg)
.class final synthetic Lcom/google/android/gms/internal/games/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Ljava/lang/String;


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzg;->a:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/games/internal/zzf;->Y0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V

    return-void
.end method
