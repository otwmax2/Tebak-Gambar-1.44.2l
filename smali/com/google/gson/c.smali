###### Class com.google.gson.c (com.google.gson.c)
.class public final Lcom/google/gson/c;
.super Ljava/lang/Object;
.source "FieldAttributes.java"


# instance fields
.field private final a:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lc7/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/gson/c;->a:Ljava/lang/reflect/Field;

    return-void
.end method
