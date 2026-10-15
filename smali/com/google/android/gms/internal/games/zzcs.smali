###### Class com.google.android.gms.internal.games.zzcs (com.google.android.gms.internal.games.zzcs)
.class final synthetic Lcom/google/android/gms/internal/games/zzcs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzcs;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/games/zzcs;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzcs;->c:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/zzac;

    .line 3
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/games/internal/zzac;->y5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method
