###### Class b5.n (b5.n)
.class public Lb5/n;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->X3()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    new-instance v0, Lb5/m;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->c4()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lb5/m;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_12
    new-instance v0, Lb5/d;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->c4()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lb5/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
