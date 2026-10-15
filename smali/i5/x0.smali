###### Class i5.x0 (i5.x0)
.class public final Li5/x0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# direct methods
.method static a()Ljava/lang/String;
    .registers 1

    const-string v0, "firebase-auth"

    .line 1
    invoke-static {v0}, Li5/x0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->a()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/LibraryVersion;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const-string p0, "-1"

    :cond_18
    return-object p0
.end method
