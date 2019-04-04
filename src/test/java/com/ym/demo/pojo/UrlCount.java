package com.ym.demo.pojo;

import io.swagger.annotations.ApiModelProperty;

import java.util.Objects;

public class UrlCount implements Comparable<UrlCount> {


    @ApiModelProperty("接口分类")
    private String type;
    @ApiModelProperty("接口URL")
    private String url;
    @ApiModelProperty("接口说明")
    private String content;
    @ApiModelProperty("访问次数")
    private Long count;

    public UrlCount(String type, String url, String content, Long count) {
        this.type = type;
        this.url = url;
        this.content = content;
        this.count = count;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UrlCount urlCount = (UrlCount) o;
        return Objects.equals(type, urlCount.type) &&
                Objects.equals(url, urlCount.url) &&
                Objects.equals(content, urlCount.content) &&
                Objects.equals(count, urlCount.count);
    }

    @Override
    public int hashCode() {

        return Objects.hash(type, url, content, count);
    }

    @Override
    public int compareTo(UrlCount o) {
        if (o.count == count)
            return 0;
        else if (o.count > count)
            return -1;
        else
            return 1;
    }

    @Override
    public String toString() {
        return "UrlCount{" +
                "type='" + type + '\'' +
                ", url='" + url + '\'' +
                ", content='" + content + '\'' +
                ", count=" + count +
                '}';
    }
}
