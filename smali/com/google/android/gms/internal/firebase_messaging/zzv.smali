###### Class com.google.android.gms.internal.firebase_messaging.zzv (com.google.android.gms.internal.firebase_messaging.zzv)
.class public final Lcom/google/android/gms/internal/firebase_messaging/zzv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# instance fields
.field private a:I

.field private final b:Lcom/google/android/gms/internal/firebase_messaging/zzy;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzy;->o:Lcom/google/android/gms/internal/firebase_messaging/zzy;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b:Lcom/google/android/gms/internal/firebase_messaging/zzy;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a:I

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/internal/firebase_messaging/zzz;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzu;

    iget v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a:I

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b:Lcom/google/android/gms/internal/firebase_messaging/zzy;

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzu;-><init>(ILcom/google/android/gms/internal/firebase_messaging/zzy;)V

    return-object v0
.end method
