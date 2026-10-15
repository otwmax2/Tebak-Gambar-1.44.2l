###### Class com.google.android.gms.internal.p001authapiphone.zzl (com.google.android.gms.internal.auth-api-phone.zzl)
.class public final synthetic Lcom/google/android/gms/internal/auth-api-phone/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-api-phone@@17.5.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/auth-api-phone/zzr;


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api-phone/zzl;->a:Lcom/google/android/gms/internal/auth-api-phone/zzr;

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzw;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/auth-api-phone/zzo;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/auth-api-phone/zzo;-><init>(Lcom/google/android/gms/internal/auth-api-phone/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzh;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/auth-api-phone/zzh;->A9(Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-void
.end method
