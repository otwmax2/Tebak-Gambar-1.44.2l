###### Class v4.n (v4.n)
.class public final Lv4/n;
.super Ljava/lang/RuntimeException;
.source "com.google.android.play:core@@1.10.2"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Failed to bind to the service."

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
