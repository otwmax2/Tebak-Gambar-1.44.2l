###### Class l0.d (l0.d)
.class public abstract Ll0/d;
.super Ljava/lang/Object;
.source "Utf8.java"


# static fields
.field private static a:Ll0/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ll0/d;
    .registers 1

    .line 1
    sget-object v0, Ll0/d;->a:Ll0/d;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ll0/e;

    invoke-direct {v0}, Ll0/e;-><init>()V

    sput-object v0, Ll0/d;->a:Ll0/d;

    .line 3
    :cond_b
    sget-object v0, Ll0/d;->a:Ll0/d;

    return-object v0
.end method
