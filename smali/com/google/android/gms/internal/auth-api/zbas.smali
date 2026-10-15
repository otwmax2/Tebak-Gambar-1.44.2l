###### Class com.google.android.gms.internal.p000authapi.zbas (com.google.android.gms.internal.auth-api.zbas)
.class public final synthetic Lcom/google/android/gms/internal/auth-api/zbas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@20.2.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/auth-api/zbay;

.field public final synthetic b:Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zbas;->a:Lcom/google/android/gms/internal/auth-api/zbay;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth-api/zbas;->b:Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;

    check-cast p1, Lcom/google/android/gms/internal/auth-api/zbaz;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/auth-api/zbay;->z(Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;Lcom/google/android/gms/internal/auth-api/zbaz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
