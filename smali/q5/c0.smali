###### Class q5.c0 (q5.c0)
.class public interface abstract Lq5/c0;
.super Ljava/lang/Object;
.source "InstallIdProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq5/c0$a;
    }
.end annotation


# virtual methods
.method public abstract a()Lq5/c0$a;
.end method

###### Class q5.c0.a (q5.c0$a)
.class public abstract Lq5/c0$a;
.super Ljava/lang/Object;
.source "InstallIdProvider.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq5/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Lq5/c0$a;
    .registers 3

    .line 1
    new-instance v0, Lq5/c;

    invoke-direct {v0, p0, p1}, Lq5/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lq5/c0$a;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lq5/c0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lq5/c0$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method
