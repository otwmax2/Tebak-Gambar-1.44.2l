###### Class q5.u (q5.u)
.class public abstract Lq5/u;
.super Ljava/lang/Object;
.source "CrashlyticsReportWithSessionId.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ls5/f0;Ljava/lang/String;Ljava/io/File;)Lq5/u;
    .registers 4

    .line 1
    new-instance v0, Lq5/b;

    invoke-direct {v0, p0, p1, p2}, Lq5/b;-><init>(Ls5/f0;Ljava/lang/String;Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ls5/f0;
.end method

.method public abstract c()Ljava/io/File;
.end method

.method public abstract d()Ljava/lang/String;
.end method
