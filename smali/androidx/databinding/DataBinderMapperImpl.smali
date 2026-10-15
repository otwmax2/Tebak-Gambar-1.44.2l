###### Class androidx.databinding.DataBinderMapperImpl (androidx.databinding.DataBinderMapperImpl)
.class public Landroidx/databinding/DataBinderMapperImpl;
.super Landroidx/databinding/MergedDataBinderMapper;
.source "DataBinderMapperImpl.java"


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/databinding/MergedDataBinderMapper;-><init>()V

    .line 2
    new-instance v0, Lcom/tebakgambar/DataBinderMapperImpl;

    invoke-direct {v0}, Lcom/tebakgambar/DataBinderMapperImpl;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/databinding/MergedDataBinderMapper;->e(Landroidx/databinding/e;)V

    return-void
.end method
