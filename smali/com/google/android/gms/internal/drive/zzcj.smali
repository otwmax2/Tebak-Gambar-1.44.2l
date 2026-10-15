###### Class com.google.android.gms.internal.drive.zzcj (com.google.android.gms.internal.drive.zzcj)
.class final synthetic Lcom/google/android/gms/internal/drive/zzcj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final a:Lcom/google/android/gms/internal/drive/zzg;


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcj;->a:Lcom/google/android/gms/internal/drive/zzg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzch;->B(Lcom/google/android/gms/internal/drive/zzg;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/drive/events/ListenerToken;

    move-result-object p1

    return-object p1
.end method
